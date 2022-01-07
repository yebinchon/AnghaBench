
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_size_t ;


 int FALSE ;
 int TRUE ;

svn_boolean_t
svn_dirent_is_root(const char *dirent, apr_size_t len)
{
  if (len == 1 && dirent[0] == '/')
    return TRUE;

  return FALSE;
}
