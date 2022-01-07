
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t ch_slot; int ch_slotnum; int ch_anafanum; int chassis; int info; } ;
typedef TYPE_1__ ibnd_node_t ;


 char** ChassisSlotTypeStr ;
 int IBND_DEBUG (char*) ;
 int IB_NODE_VENDORID_F ;
 int MLX_VENDOR_ID ;
 size_t SRBD_CS ;
 size_t UNRESOLVED_CS ;
 int VTR_VENDOR_ID ;
 int mad_get_field (int ,int ,int ) ;
 int snprintf (char*,size_t,char*,char*,int,int) ;

char *ibnd_get_chassis_slot_str(ibnd_node_t * node, char *str, size_t size)
{
 int vendor_id;

 if (!node) {
  IBND_DEBUG("node parameter NULL\n");
  return ((void*)0);
 }


 vendor_id = mad_get_field(node->info, 0,IB_NODE_VENDORID_F);

 if ((vendor_id != VTR_VENDOR_ID) && (vendor_id != MLX_VENDOR_ID))
  return ((void*)0);
 if (!node->chassis)
  return ((void*)0);
 if (node->ch_slot == UNRESOLVED_CS || node->ch_slot > SRBD_CS)
  return ((void*)0);
 if (!str)
  return ((void*)0);
 snprintf(str, size, "%s %d Chip %d", ChassisSlotTypeStr[node->ch_slot],
   node->ch_slotnum, node->ch_anafanum);
 return str;
}
