
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct gas_query {int pending; struct wpa_supplicant* wpa_s; } ;


 int dl_list_init (int *) ;
 struct gas_query* os_zalloc (int) ;

struct gas_query * gas_query_init(struct wpa_supplicant *wpa_s)
{
 struct gas_query *gas;

 gas = os_zalloc(sizeof(*gas));
 if (gas == ((void*)0))
  return ((void*)0);

 gas->wpa_s = wpa_s;
 dl_list_init(&gas->pending);

 return gas;
}
