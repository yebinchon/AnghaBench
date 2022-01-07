
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct ctl_port {size_t* lun_map; size_t lun_map_size; int status; int targ_lun_arg; int (* lun_disable ) (int ,size_t) ;} ;


 int CTL_PORT_STATUS_ONLINE ;
 size_t UINT32_MAX ;
 int ctl_isc_announce_port (struct ctl_port*) ;
 int stub1 (int ,size_t) ;

int
ctl_lun_map_unset(struct ctl_port *port, uint32_t plun)
{
 uint32_t old;

 if (port->lun_map == ((void*)0) || plun >= port->lun_map_size)
  return (0);
 old = port->lun_map[plun];
 port->lun_map[plun] = UINT32_MAX;
 if ((port->status & CTL_PORT_STATUS_ONLINE) && old != UINT32_MAX) {
  if (port->lun_disable != ((void*)0))
   port->lun_disable(port->targ_lun_arg, plun);
  ctl_isc_announce_port(port);
 }
 return (0);
}
