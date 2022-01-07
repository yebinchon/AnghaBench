
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_ucm_notify {int event; int id; } ;
struct ib_cm_id {TYPE_1__* device; int handle; } ;
typedef enum ibv_event_type { ____Placeholder_ibv_event_type } ibv_event_type ;
struct TYPE_2__ {int fd; } ;


 int CM_CREATE_MSG_CMD (void*,struct ib_ucm_notify*,int ,int) ;
 int EINVAL ;
 int ENODATA ;
 int ERR (int ) ;
 int IBV_EVENT_COMM_EST ;
 int IB_USER_CM_CMD_NOTIFY ;
 int abi_ver ;
 int cm_establish (struct ib_cm_id*) ;
 int write (int ,void*,int) ;

int ib_cm_notify(struct ib_cm_id *cm_id, enum ibv_event_type event)
{
 struct ib_ucm_notify *cmd;
 void *msg;
 int result;
 int size;

 if (abi_ver == 4) {
  if (event == IBV_EVENT_COMM_EST)
   return cm_establish(cm_id);
  else
   return ERR(EINVAL);
 }

 CM_CREATE_MSG_CMD(msg, cmd, IB_USER_CM_CMD_NOTIFY, size);
 cmd->id = cm_id->handle;
 cmd->event = event;

 result = write(cm_id->device->fd, msg, size);
 if (result != size)
  return (result >= 0) ? ERR(ENODATA) : -1;

 return 0;
}
