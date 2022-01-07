
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VICMD ;
typedef int SCR ;


 int LITTLEWORD ;
 int bword (int *,int *,int ) ;

int
v_wordb(SCR *sp, VICMD *vp)
{
 return (bword(sp, vp, LITTLEWORD));
}
