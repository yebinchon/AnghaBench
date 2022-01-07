
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tncs_data {struct tncs_data* tncs_message; struct tncs_data* next; TYPE_1__* imv_data; } ;
struct TYPE_4__ {struct tncs_data* connections; } ;
struct TYPE_3__ {struct tncs_data* imv_send; } ;


 int TNC_MAX_IMV_ID ;
 int os_free (struct tncs_data*) ;
 TYPE_2__* tncs_global_data ;

void tncs_deinit(struct tncs_data *tncs)
{
 int i;
 struct tncs_data *prev, *conn;

 if (tncs == ((void*)0))
  return;

 for (i = 0; i < TNC_MAX_IMV_ID; i++)
  os_free(tncs->imv_data[i].imv_send);

 prev = ((void*)0);
 conn = tncs_global_data->connections;
 while (conn) {
  if (conn == tncs) {
   if (prev)
    prev->next = tncs->next;
   else
    tncs_global_data->connections = tncs->next;
   break;
  }
  prev = conn;
  conn = conn->next;
 }

 os_free(tncs->tncs_message);
 os_free(tncs);
}
