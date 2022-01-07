
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dummy; } ;
struct gas_query_ap {int pending; void* msg_ctx; struct hostapd_data* hapd; } ;


 int dl_list_init (int *) ;
 struct gas_query_ap* os_zalloc (int) ;

struct gas_query_ap * gas_query_ap_init(struct hostapd_data *hapd,
     void *msg_ctx)
{
 struct gas_query_ap *gas;

 gas = os_zalloc(sizeof(*gas));
 if (!gas)
  return ((void*)0);

 gas->hapd = hapd;
 gas->msg_ctx = msg_ctx;
 dl_list_init(&gas->pending);

 return gas;
}
