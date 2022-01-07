
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAIL ;
 int GOOD ;
 int Nflag ;
 int S_IFWHT ;
 int errno ;
 int fprintf (int ,char*,char*,char*) ;
 scalar_t__ mknod (char*,int ,int ) ;
 int stderr ;
 int stdout ;
 char* strerror (int ) ;
 int vprintf (int ,char*,char*) ;

int
addwhiteout(char *name)
{

 if (!Nflag && mknod(name, S_IFWHT, 0) < 0) {
  fprintf(stderr, "warning: cannot create whiteout %s: %s\n",
      name, strerror(errno));
  return (FAIL);
 }
 vprintf(stdout, "Create whiteout %s\n", name);
 return (GOOD);
}
