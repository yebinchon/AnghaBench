
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int cn_pri; int cn_name; } ;


 int CN_REMOTE ;
 int sprintf (int ,char*) ;

__attribute__((used)) static void
uart_cnprobe(struct consdev *cp)
{

 sprintf(cp->cn_name, "uart");
 cp->cn_pri = CN_REMOTE;
}
