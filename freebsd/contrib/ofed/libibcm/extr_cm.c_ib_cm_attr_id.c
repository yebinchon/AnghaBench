
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_ucm_attr_id_resp {int remote_id; int local_id; int service_mask; int service_id; } ;
struct ib_ucm_attr_id {int id; } ;
struct ib_cm_id {TYPE_1__* device; int handle; } ;
struct ib_cm_attr_param {int remote_id; int local_id; int service_mask; int service_id; } ;
struct TYPE_2__ {int fd; } ;


 int CM_CREATE_MSG_CMD_RESP (void*,struct ib_ucm_attr_id*,struct ib_ucm_attr_id_resp*,int ,int) ;
 int EINVAL ;
 int ENODATA ;
 int ERR (int ) ;
 int IB_USER_CM_CMD_ATTR_ID ;
 int VALGRIND_MAKE_MEM_DEFINED (struct ib_ucm_attr_id_resp*,int) ;
 int write (int ,void*,int) ;

int ib_cm_attr_id(struct ib_cm_id *cm_id, struct ib_cm_attr_param *param)
{
 struct ib_ucm_attr_id_resp *resp;
 struct ib_ucm_attr_id *cmd;
 void *msg;
 int result;
 int size;

 if (!param)
  return ERR(EINVAL);

 CM_CREATE_MSG_CMD_RESP(msg, cmd, resp, IB_USER_CM_CMD_ATTR_ID, size);
 cmd->id = cm_id->handle;

 result = write(cm_id->device->fd, msg, size);
 if (result != size)
  return (result >= 0) ? ERR(ENODATA) : -1;

 VALGRIND_MAKE_MEM_DEFINED(resp, sizeof *resp);

 param->service_id = resp->service_id;
 param->service_mask = resp->service_mask;
 param->local_id = resp->local_id;
 param->remote_id = resp->remote_id;
 return 0;
}
