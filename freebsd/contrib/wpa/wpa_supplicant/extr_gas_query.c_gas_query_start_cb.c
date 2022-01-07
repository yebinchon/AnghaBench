
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_radio_work {scalar_t__ started; struct gas_query_pending* ctx; } ;
struct gas_query_pending {struct gas_query* gas; } ;
struct gas_query {struct wpa_radio_work* work; struct wpa_supplicant* wpa_s; } ;


 int GAS_QUERY_DELETED_AT_DEINIT ;
 int MSG_INFO ;
 int gas_query_done (struct gas_query*,struct gas_query_pending*,int ) ;
 int gas_query_free (struct gas_query_pending*,int) ;
 int gas_query_tx_initial_req (struct gas_query*,struct gas_query_pending*) ;
 int radio_work_done (struct wpa_radio_work*) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;
 scalar_t__ wpas_update_random_addr_disassoc (struct wpa_supplicant*) ;

__attribute__((used)) static void gas_query_start_cb(struct wpa_radio_work *work, int deinit)
{
 struct gas_query_pending *query = work->ctx;
 struct gas_query *gas = query->gas;
 struct wpa_supplicant *wpa_s = gas->wpa_s;

 if (deinit) {
  if (work->started) {
   gas->work = ((void*)0);
   gas_query_done(gas, query, GAS_QUERY_DELETED_AT_DEINIT);
   return;
  }

  gas_query_free(query, 1);
  return;
 }

 if (wpas_update_random_addr_disassoc(wpa_s) < 0) {
  wpa_msg(wpa_s, MSG_INFO,
   "Failed to assign random MAC address for GAS");
  gas_query_free(query, 1);
  radio_work_done(work);
  return;
 }

 gas->work = work;
 gas_query_tx_initial_req(gas, query);
}
