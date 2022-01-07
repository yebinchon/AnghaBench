
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
struct parse {scalar_t__ nargs; TYPE_1__* argval; } ;
struct TYPE_5__ {int l_ui; int l_uf; } ;
struct TYPE_4__ {scalar_t__ ival; } ;
typedef int FILE ;


 int L_NEG (TYPE_2__*) ;
 TYPE_2__ delay_time ;
 int fprintf (int *,char*,int) ;

__attribute__((used)) static void
auth_delay(
 struct parse *pcmd,
 FILE *fp
 )
{
 int isneg;
 u_long val;

 if (pcmd->nargs == 0) {
  val = delay_time.l_ui * 1000 + delay_time.l_uf / 4294967;
  (void) fprintf(fp, "delay %lu ms\n", val);
 } else {
  if (pcmd->argval[0].ival < 0) {
   isneg = 1;
   val = (u_long)(-pcmd->argval[0].ival);
  } else {
   isneg = 0;
   val = (u_long)pcmd->argval[0].ival;
  }

  delay_time.l_ui = val / 1000;
  val %= 1000;
  delay_time.l_uf = val * 4294967;

  if (isneg)
      L_NEG(&delay_time);
 }
}
