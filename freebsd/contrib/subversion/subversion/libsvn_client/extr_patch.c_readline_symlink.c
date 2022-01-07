
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef void* svn_boolean_t ;
struct symlink_baton_t {void* at_eof; int local_abspath; } ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 void* FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int svn_stringbuf_from_stream (int **,int *,int const,int *) ;
 int svn_subst_read_specialfile (int **,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
readline_symlink(void *baton, svn_stringbuf_t **line, const char **eol_str,
                 svn_boolean_t *eof, apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  struct symlink_baton_t *sb = baton;

  if (eof)
    *eof = TRUE;
  if (eol_str)
    *eol_str = ((void*)0);

  if (sb->at_eof)
    {
      *line = ((void*)0);
    }
  else
    {
      svn_stream_t *stream;
      const apr_size_t len_hint = 64;

      SVN_ERR(svn_subst_read_specialfile(&stream, sb->local_abspath,
                                         scratch_pool, scratch_pool));
      SVN_ERR(svn_stringbuf_from_stream(line, stream, len_hint, result_pool));
      *eof = FALSE;
      sb->at_eof = TRUE;
    }

  return SVN_NO_ERROR;
}
