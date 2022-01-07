
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ argc; } ;
typedef int SCR ;
typedef TYPE_1__ EXCMD ;


 int WN ;
 int ex_next (int *,TYPE_1__*) ;
 scalar_t__ exwr (int *,TYPE_1__*,int ) ;
 scalar_t__ file_m3 (int *,int ) ;

int
ex_wn(SCR *sp, EXCMD *cmdp)
{
 if (exwr(sp, cmdp, WN))
  return (1);
 if (file_m3(sp, 0))
  return (1);


 cmdp->argc = 0;

 return (ex_next(sp, cmdp));
}
