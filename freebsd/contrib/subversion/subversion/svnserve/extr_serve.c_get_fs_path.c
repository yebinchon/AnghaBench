
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_size_t ;


 int SVN_ERR_RA_ILLEGAL_URL ;
 int * SVN_NO_ERROR ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 int * svn_error_createf (int ,int *,char*,char const*,char const*) ;

__attribute__((used)) static svn_error_t *get_fs_path(const char *repos_url, const char *url,
                                const char **fs_path)
{
  apr_size_t len;

  len = strlen(repos_url);
  if (strncmp(url, repos_url, len) != 0)
    return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                             "'%s' is not the same repository as '%s'",
                             url, repos_url);
  *fs_path = url + len;
  if (! **fs_path)
    *fs_path = "/";

  return SVN_NO_ERROR;
}
