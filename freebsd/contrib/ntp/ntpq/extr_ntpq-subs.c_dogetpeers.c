
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
struct varlist {int dummy; } ;
typedef int associd_t ;
typedef int FILE ;


 int CTL_OP_READVAR ;
 char* currenthost ;
 int doprintpeers (struct varlist*,int,int,size_t,char const*,int *,int) ;
 int doquery (int ,int,int ,int ,int *,scalar_t__*,size_t*,char const**) ;
 int doquerylist (struct varlist*,int ,int,int ,scalar_t__*,size_t*,char const**) ;
 int fprintf (int ,char*,...) ;
 int numhosts ;
 int stderr ;

__attribute__((used)) static int
dogetpeers(
 struct varlist *pvl,
 associd_t associd,
 FILE *fp,
 int af
 )
{
 const char *datap;
 int res;
 size_t dsize;
 u_short rstatus;
 res = doquery(CTL_OP_READVAR, associd, 0, 0, ((void*)0), &rstatus,
     &dsize, &datap);


 if (res != 0)
  return 0;

 if (dsize == 0) {
  if (numhosts > 1)
   fprintf(stderr, "server=%s ", currenthost);
  fprintf(stderr,
   "***No information returned for association %u\n",
   associd);
  return 0;
 }

 return doprintpeers(pvl, associd, (int)rstatus, dsize, datap,
       fp, af);
}
