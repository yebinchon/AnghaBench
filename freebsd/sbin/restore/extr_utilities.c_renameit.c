
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Nflag ;
 int errno ;
 int fprintf (int ,char*,char*,char*,char*) ;
 scalar_t__ rename (char*,char*) ;
 int stderr ;
 int stdout ;
 char* strerror (int ) ;
 int vprintf (int ,char*,char*,char*) ;

void
renameit(char *from, char *to)
{
 if (!Nflag && rename(from, to) < 0) {
  fprintf(stderr, "warning: cannot rename %s to %s: %s\n",
      from, to, strerror(errno));
  return;
 }
 vprintf(stdout, "rename %s to %s\n", from, to);
}
