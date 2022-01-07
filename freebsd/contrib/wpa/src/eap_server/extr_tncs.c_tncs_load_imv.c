
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnc_if_imv {int * path; int name; int * dlhandle; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int RTLD_LAZY ;
 int dlerror () ;
 int * dlopen (int *,int ) ;
 scalar_t__ tncs_imv_initialize (struct tnc_if_imv*) ;
 scalar_t__ tncs_imv_provide_bind_function (struct tnc_if_imv*) ;
 scalar_t__ tncs_imv_resolve_funcs (struct tnc_if_imv*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int tncs_load_imv(struct tnc_if_imv *imv)
{
 if (imv->path == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "TNC: No IMV configured");
  return -1;
 }

 wpa_printf(MSG_DEBUG, "TNC: Opening IMV: %s (%s)",
     imv->name, imv->path);
 imv->dlhandle = dlopen(imv->path, RTLD_LAZY);
 if (imv->dlhandle == ((void*)0)) {
  wpa_printf(MSG_ERROR, "TNC: Failed to open IMV '%s' (%s): %s",
      imv->name, imv->path, dlerror());
  return -1;
 }

 if (tncs_imv_resolve_funcs(imv) < 0) {
  wpa_printf(MSG_ERROR, "TNC: Failed to resolve IMV functions");
  return -1;
 }

 if (tncs_imv_initialize(imv) < 0 ||
     tncs_imv_provide_bind_function(imv) < 0) {
  wpa_printf(MSG_ERROR, "TNC: Failed to initialize IMV");
  return -1;
 }

 return 0;
}
