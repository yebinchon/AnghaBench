
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct ib_ucm_private_data {uintptr_t data; scalar_t__ len; int id; } ;
struct ib_cm_id {TYPE_1__* device; int handle; } ;
struct TYPE_2__ {int fd; } ;


 int CM_CREATE_MSG_CMD (void*,struct ib_ucm_private_data*,int ,int) ;
 int ENODATA ;
 int ERR (int ) ;
 int write (int ,void*,int) ;

__attribute__((used)) static inline int cm_send_private_data(struct ib_cm_id *cm_id,
           uint32_t type,
           void *private_data,
           uint8_t private_data_len)
{
 struct ib_ucm_private_data *cmd;
 void *msg;
 int result;
 int size;

 CM_CREATE_MSG_CMD(msg, cmd, type, size);
 cmd->id = cm_id->handle;

 if (private_data && private_data_len) {
  cmd->data = (uintptr_t) private_data;
  cmd->len = private_data_len;
 }

 result = write(cm_id->device->fd, msg, size);
 if (result != size)
  return (result >= 0) ? ERR(ENODATA) : -1;

 return 0;
}
