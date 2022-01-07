
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int FALSE ;
 int TRUE ;
 int is_canonical_abspath (char const*,int ) ;
 int strlen (char const*) ;

svn_boolean_t
svn_fs__is_canonical_abspath(const char *path)
{

  if (! path)
    return TRUE;


  if (! *path)
    return FALSE;


  return is_canonical_abspath(path, strlen(path));
}
