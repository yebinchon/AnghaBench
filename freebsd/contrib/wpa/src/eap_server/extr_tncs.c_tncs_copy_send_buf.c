
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tncs_data {int * tncs_message; TYPE_1__* imv_data; } ;
struct TYPE_2__ {size_t imv_send_len; int * imv_send; } ;


 int TNC_MAX_IMV_ID ;
 int os_free (int *) ;
 int os_memcpy (int *,int *,size_t) ;
 size_t os_strlen (int *) ;

u8 * tncs_copy_send_buf(struct tncs_data *tncs, u8 *pos)
{
 int i;

 for (i = 0; i < TNC_MAX_IMV_ID; i++) {
  if (tncs->imv_data[i].imv_send == ((void*)0))
   continue;

  os_memcpy(pos, tncs->imv_data[i].imv_send,
     tncs->imv_data[i].imv_send_len);
  pos += tncs->imv_data[i].imv_send_len;
  os_free(tncs->imv_data[i].imv_send);
  tncs->imv_data[i].imv_send = ((void*)0);
  tncs->imv_data[i].imv_send_len = 0;
 }

 if (tncs->tncs_message) {
  size_t len = os_strlen(tncs->tncs_message);
  os_memcpy(pos, tncs->tncs_message, len);
  pos += len;
  os_free(tncs->tncs_message);
  tncs->tncs_message = ((void*)0);
 }

 return pos;
}
