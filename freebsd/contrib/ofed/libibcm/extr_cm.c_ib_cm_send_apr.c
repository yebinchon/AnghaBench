
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ib_cm_id {int dummy; } ;
typedef enum ib_cm_apr_status { ____Placeholder_ib_cm_apr_status } ib_cm_apr_status ;


 int IB_USER_CM_CMD_SEND_APR ;
 int cm_send_status (struct ib_cm_id*,int ,int,void*,int ,void*,int ) ;

int ib_cm_send_apr(struct ib_cm_id *cm_id,
     enum ib_cm_apr_status status,
     void *info,
     uint8_t info_length,
     void *private_data,
     uint8_t private_data_len)
{
 return cm_send_status(cm_id, IB_USER_CM_CMD_SEND_APR, status,
         info, info_length,
         private_data, private_data_len);
}
