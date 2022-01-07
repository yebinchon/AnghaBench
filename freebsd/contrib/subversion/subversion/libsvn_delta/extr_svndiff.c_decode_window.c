
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int sview_len; int tview_len; int num_ops; int * new_data; TYPE_2__* ops; scalar_t__ src_ops; int sview_offset; } ;
typedef TYPE_1__ svn_txdelta_window_t ;
struct TYPE_12__ {scalar_t__ action_code; int offset; int length; } ;
typedef TYPE_2__ svn_txdelta_op_t ;
struct TYPE_13__ {int len; scalar_t__ data; } ;
typedef TYPE_3__ svn_stringbuf_t ;
typedef int svn_string_t ;
typedef int svn_filesize_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int MAX_INSTRUCTION_SECTION_LEN ;
 int SVN_DELTA_WINDOW_SIZE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_palloc (int *,int) ;
 int count_and_verify_instructions (int*,unsigned char const*,unsigned char const*,int,int,int) ;
 unsigned char* decode_instruction (TYPE_2__*,unsigned char const*,unsigned char const*) ;
 int svn__decompress_lz4 (unsigned char const*,int,TYPE_3__*,int ) ;
 int svn__decompress_zlib (unsigned char const*,int,TYPE_3__*,int ) ;
 int * svn_string_ncreate (char const*,int,int *) ;
 int * svn_stringbuf__morph_into_string (TYPE_3__*) ;
 TYPE_3__* svn_stringbuf_create_empty (int *) ;
 scalar_t__ svn_txdelta_new ;
 scalar_t__ svn_txdelta_source ;

__attribute__((used)) static svn_error_t *
decode_window(svn_txdelta_window_t *window, svn_filesize_t sview_offset,
              apr_size_t sview_len, apr_size_t tview_len, apr_size_t inslen,
              apr_size_t newlen, const unsigned char *data, apr_pool_t *pool,
              unsigned int version)
{
  const unsigned char *insend;
  int ninst;
  apr_size_t npos;
  svn_txdelta_op_t *ops, *op;
  svn_string_t *new_data;

  window->sview_offset = sview_offset;
  window->sview_len = sview_len;
  window->tview_len = tview_len;

  insend = data + inslen;

  if (version == 2)
    {
      svn_stringbuf_t *instout = svn_stringbuf_create_empty(pool);
      svn_stringbuf_t *ndout = svn_stringbuf_create_empty(pool);

      SVN_ERR(svn__decompress_lz4(insend, newlen, ndout,
                                  SVN_DELTA_WINDOW_SIZE));
      SVN_ERR(svn__decompress_lz4(data, insend - data, instout,
                                  MAX_INSTRUCTION_SECTION_LEN));

      newlen = ndout->len;
      data = (unsigned char *)instout->data;
      insend = (unsigned char *)instout->data + instout->len;

      new_data = svn_stringbuf__morph_into_string(ndout);
    }
  else if (version == 1)
    {
      svn_stringbuf_t *instout = svn_stringbuf_create_empty(pool);
      svn_stringbuf_t *ndout = svn_stringbuf_create_empty(pool);

      SVN_ERR(svn__decompress_zlib(insend, newlen, ndout,
                                   SVN_DELTA_WINDOW_SIZE));
      SVN_ERR(svn__decompress_zlib(data, insend - data, instout,
                                   MAX_INSTRUCTION_SECTION_LEN));

      newlen = ndout->len;
      data = (unsigned char *)instout->data;
      insend = (unsigned char *)instout->data + instout->len;

      new_data = svn_stringbuf__morph_into_string(ndout);
    }
  else
    {


      new_data = svn_string_ncreate((const char*)insend, newlen, pool);
    }


  SVN_ERR(count_and_verify_instructions(&ninst, data, insend,
                                        sview_len, tview_len, newlen));


  ops = apr_palloc(pool, ninst * sizeof(*ops));
  npos = 0;
  window->src_ops = 0;
  for (op = ops; op < ops + ninst; op++)
    {
      data = decode_instruction(op, data, insend);
      if (op->action_code == svn_txdelta_source)
        ++window->src_ops;
      else if (op->action_code == svn_txdelta_new)
        {
          op->offset = npos;
          npos += op->length;
        }
    }
  SVN_ERR_ASSERT(data == insend);

  window->ops = ops;
  window->num_ops = ninst;
  window->new_data = new_data;

  return SVN_NO_ERROR;
}
