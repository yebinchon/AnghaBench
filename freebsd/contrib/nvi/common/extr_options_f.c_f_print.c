
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct TYPE_8__ {int * opts; } ;
typedef TYPE_1__ SCR ;
typedef int OPTION ;


 int F_SET (TYPE_1__*,int ) ;
 int OS_STRDUP ;
 int O_CLR (TYPE_1__*,int) ;
 int O_OCTAL ;
 int O_SET (TYPE_1__*,int) ;
 int SC_SCR_REFORMAT ;
 scalar_t__ o_set (TYPE_1__*,int,int ,char*,int ) ;
 int v_key_ilookup (TYPE_1__*) ;

int
f_print(
 SCR *sp,
 OPTION *op,
 char *str,
 u_long *valp)
{
 int offset = op - sp->opts;


 if (offset == O_OCTAL) {
  if (*valp)
   O_SET(sp, offset);
  else
   O_CLR(sp, offset);
 } else if (o_set(sp, offset, OS_STRDUP, str, 0))
  return(1);


 v_key_ilookup(sp);


 F_SET(sp, SC_SCR_REFORMAT);
 return (0);
}
