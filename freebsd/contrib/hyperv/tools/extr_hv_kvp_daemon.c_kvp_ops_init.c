
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kvp_op_key; int * kvp_op_exec; int * kvp_op_init; } ;


 int HV_KVP_OP_COUNT ;
 int HV_KVP_OP_DELETE ;
 int HV_KVP_OP_ENUMERATE ;
 int HV_KVP_OP_GET ;
 int HV_KVP_OP_GET_IP_INFO ;
 int HV_KVP_OP_SET ;
 int HV_KVP_OP_SET_IP_INFO ;
 int * kvp_get_os_info ;
 int kvp_op_enumerate ;
 int kvp_op_getipinfo ;
 TYPE_1__* kvp_op_hdlrs ;
 int kvp_op_load (int ,int *,int ) ;
 int kvp_op_setgetdel ;
 int kvp_op_setipinfo ;

__attribute__((used)) static int
kvp_ops_init(void)
{
 int i;


 for (i = 0; i < HV_KVP_OP_COUNT; i++) {
  kvp_op_hdlrs[i].kvp_op_key = -1;
  kvp_op_hdlrs[i].kvp_op_init = ((void*)0);
  kvp_op_hdlrs[i].kvp_op_exec = ((void*)0);
 }

 return(kvp_op_load(HV_KVP_OP_GET, ((void*)0), kvp_op_setgetdel) |
     kvp_op_load(HV_KVP_OP_SET, ((void*)0), kvp_op_setgetdel) |
     kvp_op_load(HV_KVP_OP_DELETE, ((void*)0), kvp_op_setgetdel) |
     kvp_op_load(HV_KVP_OP_ENUMERATE, kvp_get_os_info,
         kvp_op_enumerate) |
     kvp_op_load(HV_KVP_OP_GET_IP_INFO, ((void*)0), kvp_op_getipinfo) |
     kvp_op_load(HV_KVP_OP_SET_IP_INFO, ((void*)0), kvp_op_setipinfo));
}
