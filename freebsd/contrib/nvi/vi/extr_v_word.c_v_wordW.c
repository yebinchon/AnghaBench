
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VICMD ;
typedef int SCR ;


 int BIGWORD ;
 int fword (int *,int *,int ) ;

int
v_wordW(SCR *sp, VICMD *vp)
{
 return (fword(sp, vp, BIGWORD));
}
