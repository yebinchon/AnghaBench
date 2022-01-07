
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 char* apr_pstrmemdup (int *,char const*,scalar_t__) ;
 int assert (int ) ;
 scalar_t__ dirent_previous_segment (char const*,scalar_t__) ;
 scalar_t__ dirent_root_length (char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 int svn_dirent_is_canonical (char const*,int *) ;

char *
svn_dirent_dirname(const char *dirent, apr_pool_t *pool)
{
  apr_size_t len = strlen(dirent);

  assert(svn_dirent_is_canonical(dirent, pool));

  if (len == dirent_root_length(dirent, len))
    return apr_pstrmemdup(pool, dirent, len);
  else
    return apr_pstrmemdup(pool, dirent, dirent_previous_segment(dirent, len));
}
