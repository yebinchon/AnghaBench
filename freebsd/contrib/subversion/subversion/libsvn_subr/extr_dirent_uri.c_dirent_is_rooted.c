
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static svn_boolean_t
dirent_is_rooted(const char *dirent)
{
  if (! dirent)
    return FALSE;


  if (dirent[0] == '/')
    return TRUE;
  return FALSE;
}
