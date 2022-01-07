
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VICMD ;
struct TYPE_2__ {int keyw; } ;
typedef int SCR ;
typedef int EXCMD ;


 int C_TAG ;
 int OOBLNO ;
 scalar_t__ STRLEN (int ) ;
 TYPE_1__* VIP (int *) ;
 int argv_exp0 (int *,int *,int ,scalar_t__) ;
 int ex_cinit (int *,int *,int ,int ,int ,int ,int ) ;
 int v_exec_ex (int *,int *,int *) ;

int
v_tagpush(SCR *sp, VICMD *vp)
{
 EXCMD cmd;

 ex_cinit(sp, &cmd, C_TAG, 0, OOBLNO, 0, 0);
 argv_exp0(sp, &cmd, VIP(sp)->keyw, STRLEN(VIP(sp)->keyw) + 1);
 return (v_exec_ex(sp, vp, &cmd));
}
