
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xpt_release_boot () ;

__attribute__((used)) static void
xpt_boot_delay(void *arg)
{

 xpt_release_boot();
}
