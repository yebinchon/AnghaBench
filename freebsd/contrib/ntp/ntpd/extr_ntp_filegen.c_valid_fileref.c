
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const DIR_SEP ;
 int FALSE ;
 int LOG_ERR ;
 int TRUE ;
 int msyslog (int ,char*,char const*) ;
 char* strchr (char const*,char const) ;

__attribute__((used)) static int
valid_fileref(
 const char * dir,
 const char * fname
 )
{
 const char *p;




 if (((void*)0) == dir || '\0' == dir[0])
  return FALSE;

 if (((void*)0) == fname)
  return FALSE;
 for (p = fname; p != ((void*)0); p = strchr(p, DIR_SEP)) {
  if ('.' == p[0] && '.' == p[1]
      && ('\0' == p[2] || DIR_SEP == p[2]))
   return FALSE;
 }

 return TRUE;
}
