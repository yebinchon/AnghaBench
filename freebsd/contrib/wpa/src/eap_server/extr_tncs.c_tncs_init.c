
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tncs_data {struct tncs_data* next; scalar_t__ connectionID; int imv; } ;
struct TYPE_2__ {struct tncs_data* connections; int next_conn_id; int imv; } ;


 struct tncs_data* os_zalloc (int) ;
 TYPE_1__* tncs_global_data ;

struct tncs_data * tncs_init(void)
{
 struct tncs_data *tncs;

 if (tncs_global_data == ((void*)0))
  return ((void*)0);

 tncs = os_zalloc(sizeof(*tncs));
 if (tncs == ((void*)0))
  return ((void*)0);
 tncs->imv = tncs_global_data->imv;
 tncs->connectionID = tncs_global_data->next_conn_id++;
 tncs->next = tncs_global_data->connections;
 tncs_global_data->connections = tncs;

 return tncs;
}
