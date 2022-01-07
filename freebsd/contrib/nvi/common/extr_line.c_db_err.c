
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef scalar_t__ recno_t ;
typedef int SCR ;


 int M_ERR ;
 int msgq (int *,int ,char*,int ) ;

void
db_err(
 SCR *sp,
 recno_t lno)
{
 msgq(sp, M_ERR,
     "008|Error: unable to retrieve line %lu", (u_long)lno);
}
