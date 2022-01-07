
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
struct varlist {int * name; } ;
typedef int associd_t ;
typedef int FILE ;


 int TYPE_CLOCK ;
 char* currenthost ;
 int doquerylist (struct varlist*,int,int,int ,scalar_t__*,size_t*,char const**) ;
 int fprintf (int *,char*,...) ;
 int numhosts ;
 scalar_t__ old_rv ;
 int printvars (size_t,char const*,int,int,int,int *) ;

__attribute__((used)) static int
dolist(
 struct varlist *vlist,
 associd_t associd,
 int op,
 int type,
 FILE *fp
 )
{
 const char *datap;
 int res;
 size_t dsize;
 u_short rstatus;
 int quiet;





 if (old_rv)
  quiet = 0;
 else
  quiet = (vlist->name != ((void*)0));

 res = doquerylist(vlist, op, associd, 0, &rstatus, &dsize, &datap);

 if (res != 0)
  return 0;

 if (numhosts > 1)
  fprintf(fp, "server=%s ", currenthost);
 if (dsize == 0) {
  if (associd == 0)
   fprintf(fp, "No system%s variables returned\n",
    (type == TYPE_CLOCK) ? " clock" : "");
  else
   fprintf(fp,
    "No information returned for%s association %u\n",
    (type == TYPE_CLOCK) ? " clock" : "",
    associd);
  return 1;
 }

 if (!quiet)
  fprintf(fp, "associd=%u ", associd);
 printvars(dsize, datap, (int)rstatus, type, quiet, fp);
 return 1;
}
