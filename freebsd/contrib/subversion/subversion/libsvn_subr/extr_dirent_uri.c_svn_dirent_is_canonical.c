
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int relpath_is_canonical (char const*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int svn_dirent_canonicalize (char const*,int *) ;

svn_boolean_t
svn_dirent_is_canonical(const char *dirent, apr_pool_t *scratch_pool)
{
  const char *ptr = dirent;
  if (*ptr == '/')
    {
      ptr++;
    }
  return relpath_is_canonical(ptr);
}
