
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kvp_op_key; void (* kvp_op_init ) () ;int (* kvp_op_exec ) (struct hv_kvp_msg*,void*) ;} ;


 int HV_KVP_OP_COUNT ;
 int KVP_LOG (int ,char*) ;
 int LOG_ERR ;
 TYPE_1__* kvp_op_hdlrs ;
 void stub1 () ;

__attribute__((used)) static int
kvp_op_load(int key, void (*init)(void),
     int (*exec)(struct hv_kvp_msg *, void *))
{
 int error = 0;

 if (key < 0 || key >= HV_KVP_OP_COUNT) {
  KVP_LOG(LOG_ERR, "Operation key out of supported range\n");
  error = -1;
  goto kvp_op_load_done;
 }

 kvp_op_hdlrs[key].kvp_op_key = key;
 kvp_op_hdlrs[key].kvp_op_init = init;
 kvp_op_hdlrs[key].kvp_op_exec = exec;

 if (kvp_op_hdlrs[key].kvp_op_init != ((void*)0))
  kvp_op_hdlrs[key].kvp_op_init();

kvp_op_load_done:
 return(error);
}
