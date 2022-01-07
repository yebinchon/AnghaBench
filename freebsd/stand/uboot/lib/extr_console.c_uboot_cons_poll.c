
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ub_tstc () ;

__attribute__((used)) static int
uboot_cons_poll()
{

 return (ub_tstc());
}
