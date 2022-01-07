
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VICMD ;
typedef int SCR ;


 int O_cmd ;
 int io (int *,int *,int ) ;

int
v_iO(SCR *sp, VICMD *vp)
{
 return (io(sp, vp, O_cmd));
}
