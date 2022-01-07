
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tncc_data {struct tnc_if_imc* imc; } ;
struct tnc_if_imc {scalar_t__ imc_send_len; int * imc_send; struct tnc_if_imc* next; } ;


 int os_free (int *) ;
 int os_memcpy (int *,int *,scalar_t__) ;

u8 * tncc_copy_send_buf(struct tncc_data *tncc, u8 *pos)
{
 struct tnc_if_imc *imc;

 for (imc = tncc->imc; imc; imc = imc->next) {
  if (imc->imc_send == ((void*)0))
   continue;

  os_memcpy(pos, imc->imc_send, imc->imc_send_len);
  pos += imc->imc_send_len;
  os_free(imc->imc_send);
  imc->imc_send = ((void*)0);
  imc->imc_send_len = 0;
 }

 return pos;
}
