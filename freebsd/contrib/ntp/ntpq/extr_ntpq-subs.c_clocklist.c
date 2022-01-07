
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse {scalar_t__ nargs; TYPE_1__* argval; } ;
typedef scalar_t__ associd_t ;
struct TYPE_2__ {scalar_t__ uval; } ;
typedef int FILE ;


 int CTL_OP_READCLOCK ;
 int TYPE_CLOCK ;
 scalar_t__ checkassocid (scalar_t__) ;
 int dolist (int ,scalar_t__,int ,int ,int *) ;
 int g_varlist ;

__attribute__((used)) static void
clocklist(
 struct parse *pcmd,
 FILE *fp
 )
{
 associd_t associd;


 if (pcmd->nargs == 0) {
  associd = 0;
 } else {
  if (pcmd->argval[0].uval == 0)
   associd = 0;
  else if ((associd = checkassocid(pcmd->argval[0].uval)) == 0)
   return;
 }

 dolist(g_varlist, associd, CTL_OP_READCLOCK, TYPE_CLOCK, fp);
}
