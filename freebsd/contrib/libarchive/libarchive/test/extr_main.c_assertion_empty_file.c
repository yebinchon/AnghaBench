
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
typedef int ssize_t ;
typedef scalar_t__ off_t ;
typedef int buff ;
typedef int FILE ;


 int assertion_count (char const*,int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (char*,int,int ,int *) ;
 int hexdump (char*,int *,int ,int ) ;
 int logprintf (char*,...) ;
 scalar_t__ stat (char const*,struct stat*) ;

int
assertion_empty_file(const char *filename, int line, const char *f1)
{
 char buff[1024];
 struct stat st;
 ssize_t s;
 FILE *f;

 assertion_count(filename, line);

 if (stat(f1, &st) != 0) {
  failure_start(filename, line, "Stat failed: %s", f1);
  failure_finish(((void*)0));
  return (0);
 }
 if (st.st_size == 0)
  return (1);

 failure_start(filename, line, "File should be empty: %s", f1);
 logprintf("    File size: %d\n", (int)st.st_size);
 logprintf("    Contents:\n");
 f = fopen(f1, "rb");
 if (f == ((void*)0)) {
  logprintf("    Unable to open %s\n", f1);
 } else {
  s = ((off_t)sizeof(buff) < st.st_size) ?
      (ssize_t)sizeof(buff) : (ssize_t)st.st_size;
  s = fread(buff, 1, s, f);
  hexdump(buff, ((void*)0), s, 0);
  fclose(f);
 }
 failure_finish(((void*)0));
 return (0);
}
