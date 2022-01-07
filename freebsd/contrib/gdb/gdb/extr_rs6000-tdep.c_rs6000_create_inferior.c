
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rs6000_set_host_arch_hook (int) ;

void
rs6000_create_inferior (int pid)
{
  if (rs6000_set_host_arch_hook)
    rs6000_set_host_arch_hook (pid);
}
