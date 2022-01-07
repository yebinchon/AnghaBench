
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int FALSE ;
 scalar_t__ SVN_PATH_IS_EMPTY (char const*) ;
 int TRUE ;
 int assert (int ) ;
 int is_canonical (char const*,int ) ;
 int * strchr (char const*,char) ;
 int strlen (char const*) ;

svn_boolean_t
svn_path_is_single_path_component(const char *name)
{
  assert(is_canonical(name, strlen(name)));


  if (SVN_PATH_IS_EMPTY(name)
      || (name[0] == '.' && name[1] == '.' && name[2] == '\0'))
    return FALSE;


  if (strchr(name, '/') != ((void*)0))
    return FALSE;


  return TRUE;
}
