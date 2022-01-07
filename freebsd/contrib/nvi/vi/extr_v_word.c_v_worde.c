
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VICMD ;
typedef int SCR ;


 int LITTLEWORD ;
 int eword (int *,int *,int ) ;

int
v_worde(SCR *sp, VICMD *vp)
{
 return (eword(sp, vp, LITTLEWORD));
}
