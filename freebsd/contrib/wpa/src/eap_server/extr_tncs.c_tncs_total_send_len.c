
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tncs_data {scalar_t__ tncs_message; TYPE_1__* imv_data; } ;
struct TYPE_2__ {scalar_t__ imv_send_len; } ;


 int TNC_MAX_IMV_ID ;
 scalar_t__ os_strlen (scalar_t__) ;

size_t tncs_total_send_len(struct tncs_data *tncs)
{
 int i;
 size_t len = 0;

 for (i = 0; i < TNC_MAX_IMV_ID; i++)
  len += tncs->imv_data[i].imv_send_len;
 if (tncs->tncs_message)
  len += os_strlen(tncs->tncs_message);
 return len;
}
