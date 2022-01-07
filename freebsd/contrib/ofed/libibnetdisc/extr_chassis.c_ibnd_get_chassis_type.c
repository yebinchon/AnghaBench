
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t ch_type; char* ch_type_str; int info; int chassis; } ;
typedef TYPE_1__ ibnd_node_t ;


 char** ChassisTypeStr ;
 int IBND_DEBUG (char*) ;
 int IB_NODE_VENDORID_F ;
 size_t ISR4200_CT ;

 size_t UNRESOLVED_CT ;

 int mad_get_field (int ,int ,int ) ;

char *ibnd_get_chassis_type(ibnd_node_t * node)
{
 int chassis_type;

 if (!node) {
  IBND_DEBUG("node parameter NULL\n");
  return ((void*)0);
 }

 if (!node->chassis)
  return ((void*)0);

 chassis_type = mad_get_field(node->info, 0, IB_NODE_VENDORID_F);

 switch (chassis_type)
 {
  case 128:
  {
   if (node->ch_type == UNRESOLVED_CT || node->ch_type > ISR4200_CT)
    return ((void*)0);
   return ChassisTypeStr[node->ch_type];
  }
  case 129:
  {
   if (node->ch_type_str[0] == '\0')
    return ((void*)0);
   return node->ch_type_str;
  }
  default:
  {
   break;
  }
 }
 return ((void*)0);
}
