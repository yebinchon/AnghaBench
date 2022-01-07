
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_short ;
struct parse {scalar_t__ nargs; TYPE_1__* argval; } ;
typedef scalar_t__ associd_t ;
struct TYPE_2__ {scalar_t__ uval; } ;
typedef int FILE ;


 int CTL_OP_WRITEVAR ;
 int TYPE_PEER ;
 int TYPE_SYS ;
 scalar_t__ checkassocid (scalar_t__) ;
 char* currenthost ;
 int doquerylist (int ,int ,scalar_t__,int,scalar_t__*,size_t*,char const**) ;
 int fprintf (int *,char*,...) ;
 int g_varlist ;
 int numhosts ;
 int printvars (size_t,char const*,int,int ,int ,int *) ;

__attribute__((used)) static void
writelist(
 struct parse *pcmd,
 FILE *fp
 )
{
 const char *datap;
 int res;
 associd_t associd;
 size_t dsize;
 u_short rstatus;

 if (pcmd->nargs == 0) {
  associd = 0;
 } else {

  if (pcmd->argval[0].uval == 0)
   associd = 0;
  else if ((associd = checkassocid(pcmd->argval[0].uval)) == 0)
   return;
 }

 res = doquerylist(g_varlist, CTL_OP_WRITEVAR, associd, 1, &rstatus,
     &dsize, &datap);

 if (res != 0)
  return;

 if (numhosts > 1)
  (void) fprintf(fp, "server=%s ", currenthost);
 if (dsize == 0)
  (void) fprintf(fp, "done! (no data returned)\n");
 else {
  (void) fprintf(fp,"associd=%u ", associd);
  printvars(dsize, datap, (int)rstatus,
     (associd != 0) ? TYPE_PEER : TYPE_SYS, 0, fp);
 }
 return;
}
