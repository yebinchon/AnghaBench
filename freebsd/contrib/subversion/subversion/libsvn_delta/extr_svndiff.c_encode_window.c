
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int num_ops; TYPE_4__* new_data; int tview_len; int sview_len; int sview_offset; TYPE_2__ const* ops; } ;
typedef TYPE_1__ svn_txdelta_window_t ;
struct TYPE_17__ {int action_code; int length; int offset; } ;
typedef TYPE_2__ const svn_txdelta_op_t ;
struct TYPE_18__ {int len; int data; } ;
typedef TYPE_3__ svn_stringbuf_t ;
struct TYPE_19__ {int len; int data; } ;
typedef TYPE_4__ svn_string_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int MAX_INSTRUCTION_LEN ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int append_encoded_int (TYPE_3__*,int ) ;
 int svn__compress_lz4 (int ,int ,TYPE_3__*) ;
 int svn__compress_zlib (int ,int ,TYPE_3__*,int) ;
 unsigned char* svn__encode_uint (unsigned char*,int) ;
 TYPE_4__* svn_stringbuf__morph_into_string (TYPE_3__*) ;
 int svn_stringbuf_appendbytes (TYPE_3__*,char const*,int) ;
 TYPE_3__* svn_stringbuf_create_empty (int *) ;




__attribute__((used)) static svn_error_t *
encode_window(svn_stringbuf_t **instructions_p,
              svn_stringbuf_t **header_p,
              const svn_string_t **newdata_p,
              svn_txdelta_window_t *window,
              int version,
              int compression_level,
              apr_pool_t *pool)
{
  svn_stringbuf_t *instructions;
  svn_stringbuf_t *header;
  const svn_string_t *newdata;
  unsigned char ibuf[MAX_INSTRUCTION_LEN], *ip;
  const svn_txdelta_op_t *op;


  instructions = svn_stringbuf_create_empty(pool);
  header = svn_stringbuf_create_empty(pool);


  for (op = window->ops; op < window->ops + window->num_ops; op++)
    {

      ip = ibuf;
      switch (op->action_code)
        {
        case 129: *ip = 0; break;
        case 128: *ip = (0x1 << 6); break;
        case 130: *ip = (0x2 << 6); break;
        }
      if (op->length >> 6 == 0)
        *ip++ |= (unsigned char)op->length;
      else
        ip = svn__encode_uint(ip + 1, op->length);
      if (op->action_code != 130)
        ip = svn__encode_uint(ip, op->offset);
      svn_stringbuf_appendbytes(instructions, (const char *)ibuf, ip - ibuf);
    }


  append_encoded_int(header, window->sview_offset);
  append_encoded_int(header, window->sview_len);
  append_encoded_int(header, window->tview_len);
  if (version == 2)
    {
      svn_stringbuf_t *compressed_instructions;
      compressed_instructions = svn_stringbuf_create_empty(pool);
      SVN_ERR(svn__compress_lz4(instructions->data, instructions->len,
                                compressed_instructions));
      instructions = compressed_instructions;
    }
  else if (version == 1)
    {
      svn_stringbuf_t *compressed_instructions;
      compressed_instructions = svn_stringbuf_create_empty(pool);
      SVN_ERR(svn__compress_zlib(instructions->data, instructions->len,
                                 compressed_instructions, compression_level));
      instructions = compressed_instructions;
    }
  append_encoded_int(header, instructions->len);


  if (version == 2)
    {
      svn_stringbuf_t *compressed = svn_stringbuf_create_empty(pool);

      SVN_ERR(svn__compress_lz4(window->new_data->data, window->new_data->len,
                                compressed));
      newdata = svn_stringbuf__morph_into_string(compressed);
    }
  else if (version == 1)
    {
      svn_stringbuf_t *compressed = svn_stringbuf_create_empty(pool);

      SVN_ERR(svn__compress_zlib(window->new_data->data, window->new_data->len,
                                 compressed, compression_level));
      newdata = svn_stringbuf__morph_into_string(compressed);
    }
  else
    newdata = window->new_data;

  append_encoded_int(header, newdata->len);

  *instructions_p = instructions;
  *header_p = header;
  *newdata_p = newdata;

  return SVN_NO_ERROR;
}
