
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VICMD ;
typedef int SCR ;


 int io (int *,int *,int ) ;
 int o_cmd ;

int
v_io(SCR *sp, VICMD *vp)
{
 return (io(sp, vp, o_cmd));
}
