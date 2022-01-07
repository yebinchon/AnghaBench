
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int * info; int base_lid; int portnum; TYPE_2__* node; int * ext_info; } ;
typedef TYPE_3__ ibnd_port_t ;
typedef int ib_portid_t ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__** ports; } ;
struct TYPE_5__ {int info; } ;


 int CL_NTOH32 (int ) ;
 int FDR10 ;
 int IBND_DEBUG (char*,int ,int ,int ,int,int,int ,int ,char*,int ) ;
 int IB_MLNX_EXT_PORT_LINK_SPEED_ACTIVE_F ;
 scalar_t__ IB_NODE_SWITCH ;
 int IB_PORT_CAPMASK_F ;
 int IB_PORT_CAP_HAS_EXT_SPEEDS ;
 int IB_PORT_LINK_SPEED_ACTIVE_F ;
 int IB_PORT_LINK_SPEED_EXT_ACTIVE_F ;
 int IB_PORT_LINK_WIDTH_ACTIVE_F ;
 int IB_PORT_PHYS_STATE_F ;
 int IB_PORT_STATE_F ;
 int mad_dump_val (int ,char*,int,int*) ;
 int mad_get_field (int *,int ,int ) ;
 int portid2str (int *) ;

__attribute__((used)) static void debug_port(ib_portid_t * portid, ibnd_port_t * port)
{
 char width[64], speed[64];
 int iwidth;
 int ispeed, fdr10, espeed;
 uint8_t *info;
 uint32_t cap_mask;

 iwidth = mad_get_field(port->info, 0, IB_PORT_LINK_WIDTH_ACTIVE_F);
 ispeed = mad_get_field(port->info, 0, IB_PORT_LINK_SPEED_ACTIVE_F);
 fdr10 = mad_get_field(port->ext_info, 0,
         IB_MLNX_EXT_PORT_LINK_SPEED_ACTIVE_F);

 if (port->node->type == IB_NODE_SWITCH)
  info = (uint8_t *)&port->node->ports[0]->info;
 else
  info = (uint8_t *)&port->info;
 cap_mask = mad_get_field(info, 0, IB_PORT_CAPMASK_F);
 if (cap_mask & CL_NTOH32(IB_PORT_CAP_HAS_EXT_SPEEDS))
  espeed = mad_get_field(port->info, 0, IB_PORT_LINK_SPEED_EXT_ACTIVE_F);
 else
  espeed = 0;
 IBND_DEBUG
     ("portid %s portnum %d: base lid %d state %d physstate %d %s %s %s %s\n",
      portid2str(portid), port->portnum, port->base_lid,
      mad_get_field(port->info, 0, IB_PORT_STATE_F),
      mad_get_field(port->info, 0, IB_PORT_PHYS_STATE_F),
      mad_dump_val(IB_PORT_LINK_WIDTH_ACTIVE_F, width, 64, &iwidth),
      mad_dump_val(IB_PORT_LINK_SPEED_ACTIVE_F, speed, 64, &ispeed),
      (fdr10 & FDR10) ? "FDR10" : "",
      mad_dump_val(IB_PORT_LINK_SPEED_EXT_ACTIVE_F, speed, 64, &espeed));
}
