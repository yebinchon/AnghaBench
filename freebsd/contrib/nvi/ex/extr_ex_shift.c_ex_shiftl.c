
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int EXCMD ;


 int LEFT ;
 int shift (int *,int *,int ) ;

int
ex_shiftl(SCR *sp, EXCMD *cmdp)
{
 return (shift(sp, cmdp, LEFT));
}
