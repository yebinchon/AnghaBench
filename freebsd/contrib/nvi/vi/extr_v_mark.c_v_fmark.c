
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VICMD ;
typedef int SCR ;


 int FQMARK ;
 int mark (int *,int *,int,int ) ;

int
v_fmark(SCR *sp, VICMD *vp)
{
 return (mark(sp, vp, 1, FQMARK));
}
