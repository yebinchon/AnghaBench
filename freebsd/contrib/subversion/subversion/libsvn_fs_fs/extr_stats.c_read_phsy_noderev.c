
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_12__ {scalar_t__ len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_13__ {TYPE_10__* rev_file; scalar_t__ offset; } ;
typedef TYPE_2__ revision_info_t ;
typedef int query_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
struct TYPE_11__ {int stream; int file; } ;


 int APR_SET ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (TYPE_10__*) ;
 int * SVN_NO_ERROR ;
 int svn_io_file_seek (int ,int ,int *,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_stream_readline (int ,TYPE_1__**,char*,int *,int *) ;
 int svn_stringbuf_appendbyte (TYPE_1__*,char) ;
 int svn_stringbuf_appendstr (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;

__attribute__((used)) static svn_error_t *
read_phsy_noderev(svn_stringbuf_t **noderev,
                  query_t *query,
                  apr_off_t offset,
                  revision_info_t *revision_info,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_stringbuf_t *noderev_str = svn_stringbuf_create_empty(result_pool);
  svn_stringbuf_t *line;
  svn_boolean_t eof;

  apr_pool_t *iterpool = svn_pool_create(scratch_pool);


  SVN_ERR_ASSERT(revision_info->rev_file);

  offset += revision_info->offset;
  SVN_ERR(svn_io_file_seek(revision_info->rev_file->file, APR_SET,
                           &offset, scratch_pool));


  do
    {
      svn_pool_clear(iterpool);

      SVN_ERR(svn_stream_readline(revision_info->rev_file->stream, &line,
                                  "\n", &eof, iterpool));
      svn_stringbuf_appendstr(noderev_str, line);
      svn_stringbuf_appendbyte(noderev_str, '\n');
    }
  while (line->len > 0 && !eof);


  *noderev = noderev_str;

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
