
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IMX_USR2 ;
 int IMX_USR2_RDR ;
 int ub_getreg (int ) ;

__attribute__((used)) static int
ub_tstc(void)
{

 return ((ub_getreg(IMX_USR2) & IMX_USR2_RDR) ? 1 : 0);
}
