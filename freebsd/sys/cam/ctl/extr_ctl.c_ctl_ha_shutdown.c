
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctl_softc {int othersc_pool; } ;
struct ctl_port {struct ctl_port* port_name; } ;
struct TYPE_2__ {int port_list; } ;


 int CTL_HA_CHAN_CTL ;
 scalar_t__ CTL_HA_STATUS_SUCCESS ;
 int EIO ;
 int M_CTL ;
 struct ctl_port* STAILQ_FIRST (int *) ;
 struct ctl_softc* control_softc ;
 scalar_t__ ctl_ha_msg_deregister (int ) ;
 scalar_t__ ctl_ha_msg_destroy (struct ctl_softc*) ;
 int ctl_ha_msg_shutdown (struct ctl_softc*) ;
 int ctl_pool_free (int ) ;
 int ctl_port_deregister (struct ctl_port*) ;
 int free (struct ctl_port*,int ) ;
 TYPE_1__ ha_frontend ;

__attribute__((used)) static int
ctl_ha_shutdown(void)
{
 struct ctl_softc *softc = control_softc;
 struct ctl_port *port;

 ctl_ha_msg_shutdown(softc);
 if (ctl_ha_msg_deregister(CTL_HA_CHAN_CTL) != CTL_HA_STATUS_SUCCESS)
  return (EIO);
 if (ctl_ha_msg_destroy(softc) != CTL_HA_STATUS_SUCCESS)
  return (EIO);
 ctl_pool_free(softc->othersc_pool);
 while ((port = STAILQ_FIRST(&ha_frontend.port_list)) != ((void*)0)) {
  ctl_port_deregister(port);
  free(port->port_name, M_CTL);
  free(port, M_CTL);
 }
 return (0);
}
