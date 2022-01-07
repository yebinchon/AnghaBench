
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_test_data {scalar_t__ eapol_test_num_reauths; scalar_t__ ctrl_iface; scalar_t__ id_req_sent; } ;
struct eapol_sm {int dummy; } ;
typedef enum eapol_supp_result { ____Placeholder_eapol_supp_result } eapol_supp_result ;


 int eapol_sm_reauth ;
 int eapol_test_compare_pmk (struct eapol_test_data*) ;
 int eloop_register_timeout (int ,int,int ,struct eapol_test_data*,int *) ;
 int eloop_terminate () ;
 int printf (char*,int) ;

__attribute__((used)) static void eapol_sm_cb(struct eapol_sm *eapol, enum eapol_supp_result result,
   void *ctx)
{
 struct eapol_test_data *e = ctx;
 printf("eapol_sm_cb: result=%d\n", result);
 e->id_req_sent = 0;
 if (e->ctrl_iface)
  return;
 e->eapol_test_num_reauths--;
 if (e->eapol_test_num_reauths < 0)
  eloop_terminate();
 else {
  eapol_test_compare_pmk(e);
  eloop_register_timeout(0, 100000, eapol_sm_reauth, e, ((void*)0));
 }
}
