
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ib_cm_id {int dummy; } ;


 int IB_USER_CM_CMD_SEND_DREQ ;
 int cm_send_private_data (struct ib_cm_id*,int ,void*,int ) ;

int ib_cm_send_dreq(struct ib_cm_id *cm_id,
      void *private_data,
      uint8_t private_data_len)
{
 return cm_send_private_data(cm_id, IB_USER_CM_CMD_SEND_DREQ,
        private_data, private_data_len);
}
