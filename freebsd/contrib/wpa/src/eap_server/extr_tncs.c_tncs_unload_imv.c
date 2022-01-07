
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imv {scalar_t__ dlhandle; } ;


 int dlclose (scalar_t__) ;
 int tncs_free_imv (struct tnc_if_imv*) ;
 int tncs_imv_terminate (struct tnc_if_imv*) ;

__attribute__((used)) static void tncs_unload_imv(struct tnc_if_imv *imv)
{
 tncs_imv_terminate(imv);

 if (imv->dlhandle)
  dlclose(imv->dlhandle);

 tncs_free_imv(imv);
}
