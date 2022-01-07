
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imv {struct tnc_if_imv* next; struct tnc_if_imv* imv; } ;


 int os_free (struct tnc_if_imv*) ;
 struct tnc_if_imv* tncs_global_data ;
 int tncs_unload_imv (struct tnc_if_imv*) ;

void tncs_global_deinit(void)
{
 struct tnc_if_imv *imv, *prev;

 if (tncs_global_data == ((void*)0))
  return;

 imv = tncs_global_data->imv;
 while (imv) {
  tncs_unload_imv(imv);

  prev = imv;
  imv = imv->next;
  os_free(prev);
 }

 os_free(tncs_global_data);
 tncs_global_data = ((void*)0);
}
