
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tncc_data {struct tnc_if_imc* imc; } ;
struct tnc_if_imc {int name; struct tnc_if_imc* next; } ;


 int MSG_ERROR ;
 struct tncc_data* os_zalloc (int) ;
 int tncc_deinit (struct tncc_data*) ;
 scalar_t__ tncc_load_imc (struct tnc_if_imc*) ;
 scalar_t__ tncc_read_config (struct tncc_data*) ;
 int wpa_printf (int ,char*,...) ;

struct tncc_data * tncc_init(void)
{
 struct tncc_data *tncc;
 struct tnc_if_imc *imc;

 tncc = os_zalloc(sizeof(*tncc));
 if (tncc == ((void*)0))
  return ((void*)0);






 if (tncc_read_config(tncc) < 0) {
  wpa_printf(MSG_ERROR, "TNC: Failed to read TNC configuration");
  goto failed;
 }

 for (imc = tncc->imc; imc; imc = imc->next) {
  if (tncc_load_imc(imc)) {
   wpa_printf(MSG_ERROR, "TNC: Failed to load IMC '%s'",
       imc->name);
   goto failed;
  }
 }

 return tncc;

failed:
 tncc_deinit(tncc);
 return ((void*)0);
}
