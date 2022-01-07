
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int EXCMD ;


 int RIGHT ;
 int shift (int *,int *,int ) ;

int
ex_shiftr(SCR *sp, EXCMD *cmdp)
{
 return (shift(sp, cmdp, RIGHT));
}
