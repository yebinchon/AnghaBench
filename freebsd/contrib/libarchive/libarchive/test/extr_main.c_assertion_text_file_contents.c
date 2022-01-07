
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int assertion_count (char const*,int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,...) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fread (char*,int,int,int *) ;
 int free (char*) ;
 int hexdump (char const*,char const*,int,int ) ;
 int logprintf (char*,...) ;
 char* malloc (int) ;
 scalar_t__ strlen (char const*) ;

int
assertion_text_file_contents(const char *filename, int line, const char *buff, const char *fn)
{
 char *contents;
 const char *btxt, *ftxt;
 FILE *f;
 int n, s;

 assertion_count(filename, line);
 f = fopen(fn, "r");
 if (f == ((void*)0)) {
  failure_start(filename, line,
      "File doesn't exist: %s", fn);
  failure_finish(((void*)0));
  return (0);
 }
 s = (int)strlen(buff);
 contents = malloc(s * 2 + 128);
 n = (int)fread(contents, 1, s * 2 + 128 - 1, f);
 if (n >= 0)
  contents[n] = '\0';
 fclose(f);

 btxt = buff;
 ftxt = (const char *)contents;
 while (*btxt != '\0' && *ftxt != '\0') {
  if (*btxt == *ftxt) {
   ++btxt;
   ++ftxt;
   continue;
  }
  if (btxt[0] == '\n' && ftxt[0] == '\r' && ftxt[1] == '\n') {

   ++btxt;
   ftxt += 2;
   continue;
  }
  break;
 }
 if (*btxt == '\0' && *ftxt == '\0') {
  free(contents);
  return (1);
 }
 failure_start(filename, line, "Contents don't match");
 logprintf("  file=\"%s\"\n", fn);
 if (n > 0) {
  hexdump(contents, buff, n, 0);
  logprintf("  expected\n", fn);
  hexdump(buff, contents, s, 0);
 } else {
  logprintf("  File empty, contents should be:\n");
  hexdump(buff, ((void*)0), s, 0);
 }
 failure_finish(((void*)0));
 free(contents);
 return (0);
}
