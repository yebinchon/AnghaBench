
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct varlist {int dummy; } ;
struct parse {int nargs; TYPE_1__* argval; } ;
typedef scalar_t__ associd_t ;
struct TYPE_2__ {scalar_t__ uval; int string; } ;
typedef int FILE ;


 int CTL_OP_READVAR ;
 int MAXLIST ;
 int TYPE_PEER ;
 int TYPE_SYS ;
 int ZERO (struct varlist*) ;
 scalar_t__ checkassocid (scalar_t__) ;
 int doaddvlist (struct varlist*,int ) ;
 int doclearvlist (struct varlist*) ;
 int dolist (struct varlist*,scalar_t__,int ,int,int *) ;

__attribute__((used)) static void
readvar(
 struct parse *pcmd,
 FILE *fp
 )
{
 associd_t associd;
 size_t tmpcount;
 size_t u;
 int type;
 struct varlist tmplist[MAXLIST];



 if (pcmd->nargs == 0 || pcmd->argval[0].uval == 0)
  associd = 0;
 else if ((associd = checkassocid(pcmd->argval[0].uval)) == 0)
  return;

 ZERO(tmplist);
 if (pcmd->nargs > 1) {
  tmpcount = pcmd->nargs - 1;
  for (u = 0; u < tmpcount; u++)
   doaddvlist(tmplist, pcmd->argval[1 + u].string);
 }

 type = (0 == associd)
     ? TYPE_SYS
     : TYPE_PEER;
 dolist(tmplist, associd, CTL_OP_READVAR, type, fp);

 doclearvlist(tmplist);
}
