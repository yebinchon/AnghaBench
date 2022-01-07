
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tncs_data {scalar_t__ connectionID; struct tncs_data* next; } ;
struct TYPE_2__ {struct tncs_data* connections; } ;
typedef scalar_t__ TNC_ConnectionID ;


 int MSG_DEBUG ;
 TYPE_1__* tncs_global_data ;
 int wpa_printf (int ,char*,unsigned long) ;

__attribute__((used)) static struct tncs_data * tncs_get_conn(TNC_ConnectionID connectionID)
{
 struct tncs_data *tncs;

 if (tncs_global_data == ((void*)0))
  return ((void*)0);

 tncs = tncs_global_data->connections;
 while (tncs) {
  if (tncs->connectionID == connectionID)
   return tncs;
  tncs = tncs->next;
 }

 wpa_printf(MSG_DEBUG, "TNC: Connection ID %lu not found",
     (unsigned long) connectionID);

 return ((void*)0);
}
