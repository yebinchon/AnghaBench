
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct ctl_port {size_t* lun_map; size_t lun_map_size; } ;


 size_t UINT32_MAX ;

uint32_t
ctl_lun_map_to_port(struct ctl_port *port, uint32_t lun_id)
{
 uint32_t i;

 if (port == ((void*)0))
  return (UINT32_MAX);
 if (port->lun_map == ((void*)0))
  return (lun_id);
 for (i = 0; i < port->lun_map_size; i++) {
  if (port->lun_map[i] == lun_id)
   return (i);
 }
 return (UINT32_MAX);
}
