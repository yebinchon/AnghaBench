
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tncc_data {struct tncc_data* next; struct tncc_data* imc; } ;
struct tnc_if_imc {struct tnc_if_imc* next; struct tnc_if_imc* imc; } ;


 int os_free (struct tncc_data*) ;
 int tncc_unload_imc (struct tncc_data*) ;

void tncc_deinit(struct tncc_data *tncc)
{
 struct tnc_if_imc *imc, *prev;

 imc = tncc->imc;
 while (imc) {
  tncc_unload_imc(imc);

  prev = imc;
  imc = imc->next;
  os_free(prev);
 }

 os_free(tncc);
}
