
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_size_t ;


 int FALSE ;
 int TRUE ;
 char* memchr (char const*,char,int) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static svn_boolean_t
relpath_is_canonical(const char *relpath)
{
  const char *dot_pos, *ptr = relpath;
  apr_size_t i, len;
  unsigned pattern = 0;
  if (*ptr == '/')
    return FALSE;

  if (ptr[0] == '.' && (ptr[1] == '/' || ptr[1] == '\0'))
    return FALSE;


  len = strlen(ptr);
  if (len < 2)
    return TRUE;


  if (ptr[len-1] == '/' || (ptr[len-1] == '.' && ptr[len-2] == '/'))
    return FALSE;





  for (dot_pos = memchr(ptr, '.', len);
       dot_pos;
       dot_pos = strchr(dot_pos+1, '.'))
    if (dot_pos > ptr && dot_pos[-1] == '/' && dot_pos[1] == '/')
      return FALSE;


  for (i = 0; i < len - 1; ++i)
    {
      pattern = ((pattern & 0xff) << 8) + (unsigned char)ptr[i];
      if (pattern == 0x101 * (unsigned char)('/'))
        return FALSE;
    }

  return TRUE;
}
