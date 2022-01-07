
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_OS_DEFAULT ;
 int APR_PATH_MAX ;
 int APR_READ ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_psprintf (int *,char*,unsigned int) ;
 char* apr_pstrdup (int *,char const*) ;
 scalar_t__ strlen (char const*) ;
 int strncmp (int ,char*,int) ;
 int svn_checksum (int **,int ,int ,int,int *) ;
 int svn_checksum_sha1 ;
 char* svn_checksum_to_cstring (int *,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_del_on_pool_cleanup ;
 int svn_io_file_open (int **,char const*,int ,int ,int *) ;
 int svn_io_file_readline (int *,TYPE_1__**,int *,int *,int,int *,int *) ;
 int svn_io_file_write_full (int *,int ,int,int *,int *) ;
 int svn_io_open_unique_file3 (int **,char const**,int *,int ,int *,int *) ;
 int svn_stringbuf_insert (TYPE_1__*,int ,char const*,scalar_t__) ;
 int svn_stringbuf_remove (TYPE_1__*,int ,int) ;

__attribute__((used)) static svn_error_t *
transform_link_to_git(const char **new_tmpfile,
                      const char **git_sha1,
                      const char *orig_tmpfile,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  apr_file_t *orig;
  apr_file_t *gitlike;
  svn_stringbuf_t *line;

  *git_sha1 = ((void*)0);

  SVN_ERR(svn_io_file_open(&orig, orig_tmpfile, APR_READ, APR_OS_DEFAULT,
                           scratch_pool));
  SVN_ERR(svn_io_open_unique_file3(&gitlike, new_tmpfile, ((void*)0),
                                   svn_io_file_del_on_pool_cleanup,
                                   result_pool, scratch_pool));

  SVN_ERR(svn_io_file_readline(orig, &line, ((void*)0), ((void*)0), 2 * APR_PATH_MAX + 2,
                               scratch_pool, scratch_pool));

  if (line->len > 5 && !strncmp(line->data, "link ", 5))
    {
      const char *sz_str;
      svn_checksum_t *checksum;

      svn_stringbuf_remove(line, 0, 5);

      SVN_ERR(svn_io_file_write_full(gitlike, line->data, line->len,
                                     ((void*)0), scratch_pool));



      sz_str = apr_psprintf(scratch_pool, "blob %u", (unsigned int)line->len);
      svn_stringbuf_insert(line, 0, sz_str, strlen(sz_str) + 1);

      SVN_ERR(svn_checksum(&checksum, svn_checksum_sha1,
                           line->data, line->len, scratch_pool));

      *git_sha1 = svn_checksum_to_cstring(checksum, result_pool);
    }
  else
    {

      *new_tmpfile = apr_pstrdup(result_pool, orig_tmpfile);
    }

  SVN_ERR(svn_io_file_close(orig, scratch_pool));
  SVN_ERR(svn_io_file_close(gitlike, scratch_pool));
  return SVN_NO_ERROR;
}
