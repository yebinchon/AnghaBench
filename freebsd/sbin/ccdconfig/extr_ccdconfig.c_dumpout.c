
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unit ;
struct gctl_req {int dummy; } ;


 int errx (int,char*,...) ;
 int free (char*) ;
 struct gctl_req* gctl_get_handle () ;
 char* gctl_issue (struct gctl_req*) ;
 int gctl_ro_param (struct gctl_req*,char*,int,...) ;
 int gctl_rw_param (struct gctl_req*,char*,int,char*) ;
 char* malloc (int) ;
 int printf (char*,...) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ verbose ;

__attribute__((used)) static int
dumpout(int unit)
{
 static int v;
 struct gctl_req *grq;
 int ncp;
 char *cp;
 char const *errstr;

 grq = gctl_get_handle();
 ncp = 65536;
 cp = malloc(ncp);
 gctl_ro_param(grq, "verb", -1, "list");
 gctl_ro_param(grq, "class", -1, "CCD");
 gctl_ro_param(grq, "unit", sizeof(unit), &unit);
 gctl_rw_param(grq, "output", ncp, cp);
 errstr = gctl_issue(grq);
 if (errstr != ((void*)0))
  errx(1, "%s\nor possibly kernel and ccdconfig out of sync",
   errstr);
 if (strlen(cp) == 0)
  errx(1, "ccd%d not configured", unit);
 if (verbose && !v) {
  printf("# ccd\t\tileave\tflags\tcomponent devices\n");
  v = 1;
 }
 printf("%s", cp);
 free(cp);
 return (0);
}
