
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VICMD ;
typedef int SCR ;


 int LITTLEWORD ;
 int fword (int *,int *,int ) ;

int
v_wordw(SCR *sp, VICMD *vp)
{
 return (fword(sp, vp, LITTLEWORD));
}
