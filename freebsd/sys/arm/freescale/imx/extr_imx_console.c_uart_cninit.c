
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int IMX_UFCR ;
 int ub_setreg (int ,int) ;

__attribute__((used)) static void
uart_cninit(struct consdev *cp)
{


 ub_setreg(IMX_UFCR, 0x00004210);
}
