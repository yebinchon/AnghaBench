
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOSPC ;
 char* _PATH_TMP ;
 int done (int) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char const*,char*,char*) ;
 char* getenv (char*) ;
 int stderr ;
 int warn (char*,char*) ;

__attribute__((used)) static void
fail_dirtmp(char *filename)
{
 const char *tmpdir;

 warn("%s: cannot write directory database", filename);
 if (errno == ENOSPC) {
  if ((tmpdir = getenv("TMPDIR")) == ((void*)0) || tmpdir[0] == '\0')
   tmpdir = _PATH_TMP;
  fprintf(stderr, "Try making space in %s, %s\n%s\n", tmpdir,
      "or set environment variable TMPDIR",
      "to an alternate location with more disk space.");
 }
 done(1);
}
