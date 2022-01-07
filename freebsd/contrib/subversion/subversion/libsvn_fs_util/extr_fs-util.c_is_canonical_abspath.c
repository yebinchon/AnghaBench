
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static svn_boolean_t
is_canonical_abspath(const char *path, size_t path_len)
{
  const char *end;


  if (path[0] != '/')
    return FALSE;


  if (path_len == 1)
    return TRUE;
  if (path[path_len - 1] == '/')
    return FALSE;


  end = path + path_len - 1;
  for (; path != end; ++path)
    if ((path[0] == '/') && (path[1] == '/'))
      return FALSE;

  return TRUE;
}
