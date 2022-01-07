
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sparc_utrap_setup () ;

void
pre_init(void)
{

 __sparc_utrap_setup();
}
