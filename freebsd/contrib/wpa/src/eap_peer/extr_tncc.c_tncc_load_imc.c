
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imc {int * path; int name; int * dlhandle; } ;
typedef int TCHAR ;


 scalar_t__ GetLastError () ;
 void* LoadLibrary (int *) ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int RTLD_LAZY ;
 int dlerror () ;
 int * dlopen (int *,int ) ;
 int os_free (int *) ;
 scalar_t__ tncc_imc_initialize (struct tnc_if_imc*) ;
 scalar_t__ tncc_imc_provide_bind_function (struct tnc_if_imc*) ;
 scalar_t__ tncc_imc_resolve_funcs (struct tnc_if_imc*) ;
 int wpa_printf (int ,char*,...) ;
 int * wpa_strdup_tchar (int *) ;

__attribute__((used)) static int tncc_load_imc(struct tnc_if_imc *imc)
{
 if (imc->path == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "TNC: No IMC configured");
  return -1;
 }

 wpa_printf(MSG_DEBUG, "TNC: Opening IMC: %s (%s)",
     imc->name, imc->path);
 imc->dlhandle = dlopen(imc->path, RTLD_LAZY);
 if (imc->dlhandle == ((void*)0)) {
  wpa_printf(MSG_ERROR, "TNC: Failed to open IMC '%s' (%s): %s",
      imc->name, imc->path, dlerror());
  return -1;
 }


 if (tncc_imc_resolve_funcs(imc) < 0) {
  wpa_printf(MSG_ERROR, "TNC: Failed to resolve IMC functions");
  return -1;
 }

 if (tncc_imc_initialize(imc) < 0 ||
     tncc_imc_provide_bind_function(imc) < 0) {
  wpa_printf(MSG_ERROR, "TNC: Failed to initialize IMC");
  return -1;
 }

 return 0;
}
