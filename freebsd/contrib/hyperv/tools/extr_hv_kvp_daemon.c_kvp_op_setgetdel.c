
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct kvp_op_hdlr {int kvp_op_key; } ;
struct TYPE_12__ {int pool; } ;
struct TYPE_11__ {int error; TYPE_1__ kvp_hdr; } ;
struct TYPE_19__ {int key_size; int key; } ;
struct TYPE_16__ {int value; } ;
struct TYPE_17__ {int value_size; TYPE_5__ msg_value; int key_size; int key; } ;
struct TYPE_18__ {TYPE_6__ data; } ;
struct TYPE_13__ {int value; } ;
struct TYPE_14__ {int value_size; TYPE_2__ msg_value; int key_size; int key; } ;
struct TYPE_15__ {TYPE_3__ data; } ;
struct TYPE_20__ {TYPE_8__ kvp_delete; TYPE_7__ kvp_get; TYPE_4__ kvp_set; } ;
struct hv_kvp_msg {TYPE_10__ hdr; TYPE_9__ body; } ;





 int HV_KVP_POOL_AUTO ;
 int HV_S_CONT ;
 int HV_S_OK ;
 int KVP_LOG (int ,char*,int) ;
 int LOG_ERR ;
 int assert (int ) ;
 int kvp_get_value (int,int ,int ,int ,int ) ;
 int kvp_key_add_or_modify (int,int ,int ,int ,int ) ;
 int kvp_key_delete (int,int ,int ) ;

__attribute__((used)) static int
kvp_op_setgetdel(struct hv_kvp_msg *op_msg, void *data)
{
 struct kvp_op_hdlr *op_hdlr = (struct kvp_op_hdlr *)data;
 int error = 0;
 int op_pool;

 assert(op_msg != ((void*)0));
 assert(op_hdlr != ((void*)0));

 op_pool = op_msg->hdr.kvp_hdr.pool;
 op_msg->hdr.error = HV_S_OK;

 switch(op_hdlr->kvp_op_key) {
 case 128:
  if (op_pool == HV_KVP_POOL_AUTO) {

   error = 1;
   KVP_LOG(LOG_ERR, "Ilegal to write to pool %d from host\n",
       op_pool);
  } else {
   error = kvp_key_add_or_modify(op_pool,
       op_msg->body.kvp_set.data.key,
       op_msg->body.kvp_set.data.key_size,
       op_msg->body.kvp_set.data.msg_value.value,
       op_msg->body.kvp_set.data.value_size);
  }
  break;

 case 129:
  error = kvp_get_value(op_pool,
      op_msg->body.kvp_get.data.key,
      op_msg->body.kvp_get.data.key_size,
      op_msg->body.kvp_get.data.msg_value.value,
      op_msg->body.kvp_get.data.value_size);
  break;

 case 130:
  if (op_pool == HV_KVP_POOL_AUTO) {

   error = 1;
   KVP_LOG(LOG_ERR, "Ilegal to change pool %d from host\n",
       op_pool);
  } else {
   error = kvp_key_delete(op_pool,
       op_msg->body.kvp_delete.key,
       op_msg->body.kvp_delete.key_size);
  }
  break;

 default:
  break;
 }

 if (error != 0)
  op_msg->hdr.error = HV_S_CONT;
 return(error);
}
