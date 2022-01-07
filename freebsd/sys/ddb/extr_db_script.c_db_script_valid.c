
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DB_MAXLINE ;
 scalar_t__ DB_MAXSCRIPTLEN ;
 scalar_t__ DB_MAXSCRIPTNAME ;
 int EINVAL ;
 char* db_static_buffer ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
db_script_valid(const char *scriptname, const char *script)
{
 char *buffer, *command;

 if (strlen(scriptname) == 0)
  return (EINVAL);
 if (strlen(scriptname) >= DB_MAXSCRIPTNAME)
  return (EINVAL);
 if (strlen(script) >= DB_MAXSCRIPTLEN)
  return (EINVAL);
 buffer = db_static_buffer;
 strcpy(buffer, script);
 while ((command = strsep(&buffer, ";")) != ((void*)0)) {
  if (strlen(command) >= DB_MAXLINE)
   return (EINVAL);
 }
 return (0);
}
