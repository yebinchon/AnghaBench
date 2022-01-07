
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VICMD ;
typedef int SCR ;


 int BIGWORD ;
 int eword (int *,int *,int ) ;

int
v_wordE(SCR *sp, VICMD *vp)
{
 return (eword(sp, vp, BIGWORD));
}
