
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parse {TYPE_1__* argval; } ;
struct TYPE_4__ {int assid; } ;
struct TYPE_3__ {int uval; } ;
typedef int FILE ;


 int CTL_OP_READVAR ;
 int TYPE_PEER ;
 TYPE_2__* assoc_cache ;
 int dolist (int ,int ,int ,int ,int *) ;
 int findassidrange (int ,int ,int*,int*,int *) ;
 int fprintf (int *,char*) ;
 int g_varlist ;

__attribute__((used)) static void
mreadlist(
 struct parse *pcmd,
 FILE *fp
 )
{
 int i;
 int from;
 int to;

 if (!findassidrange(pcmd->argval[0].uval, pcmd->argval[1].uval,
       &from, &to, fp))
  return;

 for (i = from; i <= to; i++) {
  if (i != from)
   fprintf(fp, "\n");
  if (!dolist(g_varlist, assoc_cache[i].assid,
       CTL_OP_READVAR, TYPE_PEER, fp))
   return;
 }
 return;
}
