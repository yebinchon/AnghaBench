
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VICMD ;
typedef int SCR ;


 int FORWARD ;
 int v_exaddr (int *,int *,int ) ;

int
v_searchf(SCR *sp, VICMD *vp)
{
 return (v_exaddr(sp, vp, FORWARD));
}
