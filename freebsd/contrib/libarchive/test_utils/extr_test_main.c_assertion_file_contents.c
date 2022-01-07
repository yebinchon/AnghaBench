
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
 int hexdump (void const*,void const*,int,int ) ;
 int logprintf (char*,...) ;
 char* malloc (int) ;
 scalar_t__ memcmp (void const*,char*,int) ;

int
assertion_file_contents(const char *filename, int line, const void *buff, int s, const char *fn)
{
 char *contents;
 FILE *f;
 int n;

 assertion_count(filename, line);

 f = fopen(fn, "rb");
 if (f == ((void*)0)) {
  failure_start(filename, line,
      "File should exist: %s", fn);
  failure_finish(((void*)0));
  return (0);
 }
 contents = malloc(s * 2);
 n = (int)fread(contents, 1, s * 2, f);
 fclose(f);
 if (n == s && memcmp(buff, contents, s) == 0) {
  free(contents);
  return (1);
 }
 failure_start(filename, line, "File contents don't match");
 logprintf("  file=\"%s\"\n", fn);
 if (n > 0)
  hexdump(contents, buff, n > 512 ? 512 : n, 0);
 else {
  logprintf("  File empty, contents should be:\n");
  hexdump(buff, ((void*)0), s > 512 ? 512 : s, 0);
 }
 failure_finish(((void*)0));
 free(contents);
 return (0);
}
