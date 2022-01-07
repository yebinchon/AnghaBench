
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char const*,...) ;
 int free (char*) ;
 char* slurpfile (int *,char*,char const*) ;
 int * strstr (char*,char const*) ;

int
assertion_file_contains_no_invalid_strings(const char *file, int line,
    const char *pathname, const char *strings[])
{
 char *buff;
 int i;

 buff = slurpfile(((void*)0), "%s", pathname);
 if (buff == ((void*)0)) {
  failure_start(file, line, "Can't read file: %s", pathname);
  failure_finish(((void*)0));
  return (0);
 }

 for (i = 0; strings[i] != ((void*)0); ++i) {
  if (strstr(buff, strings[i]) != ((void*)0)) {
   failure_start(file, line, "Invalid string in %s: %s", pathname,
       strings[i]);
   failure_finish(((void*)0));
   free(buff);
   return(0);
  }
 }

 free(buff);
 return (0);
}
