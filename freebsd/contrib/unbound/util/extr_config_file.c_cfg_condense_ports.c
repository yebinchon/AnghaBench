
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file {int* outgoing_avail_ports; } ;


 int cfg_scan_ports (int*,int) ;
 int log_assert (int) ;
 scalar_t__ reallocarray (int *,size_t,int) ;

int cfg_condense_ports(struct config_file* cfg, int** avail)
{
 int num = cfg_scan_ports(cfg->outgoing_avail_ports, 65536);
 int i, at = 0;
 *avail = ((void*)0);
 if(num == 0)
  return 0;
 *avail = (int*)reallocarray(((void*)0), (size_t)num, sizeof(int));
 if(!*avail)
  return 0;
 for(i=0; i<65536; i++) {
  if(cfg->outgoing_avail_ports[i])
   (*avail)[at++] = cfg->outgoing_avail_ports[i];
 }
 log_assert(at == num);
 return num;
}
