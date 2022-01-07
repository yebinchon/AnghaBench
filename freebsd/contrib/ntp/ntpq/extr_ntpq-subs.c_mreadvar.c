
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct varlist {int dummy; } ;
struct parse {int nargs; TYPE_1__* argval; } ;
struct TYPE_4__ {int assid; } ;
struct TYPE_3__ {int string; int uval; } ;
typedef int FILE ;


 int CTL_OP_READVAR ;
 int MAXLIST ;
 int TYPE_PEER ;
 int ZERO (struct varlist*) ;
 TYPE_2__* assoc_cache ;
 int doaddvlist (struct varlist*,int ) ;
 int doclearvlist (struct varlist*) ;
 int dolist (struct varlist*,int ,int ,int ,int *) ;
 int findassidrange (int ,int ,int*,int*,int *) ;
 struct varlist* g_varlist ;

__attribute__((used)) static void
mreadvar(
 struct parse *pcmd,
 FILE *fp
 )
{
 int i;
 int from;
 int to;
 struct varlist tmplist[MAXLIST];
 struct varlist *pvars;

 if (!findassidrange(pcmd->argval[0].uval, pcmd->argval[1].uval,
    &from, &to, fp))
  return;

 ZERO(tmplist);
 if (pcmd->nargs >= 3) {
  doaddvlist(tmplist, pcmd->argval[2].string);
  pvars = tmplist;
 } else {
  pvars = g_varlist;
 }

 for (i = from; i <= to; i++) {
  if (!dolist(pvars, assoc_cache[i].assid, CTL_OP_READVAR,
       TYPE_PEER, fp))
   break;
 }

 if (pvars == tmplist)
  doclearvlist(tmplist);

 return;
}
