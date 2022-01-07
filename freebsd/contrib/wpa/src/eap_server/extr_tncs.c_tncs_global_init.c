
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tnc_if_imv {int name; struct tnc_if_imv* next; } ;
struct TYPE_4__ {struct tnc_if_imv* imv; } ;


 int MSG_ERROR ;
 TYPE_1__* os_zalloc (int) ;
 TYPE_1__* tncs_global_data ;
 int tncs_global_deinit () ;
 scalar_t__ tncs_load_imv (struct tnc_if_imv*) ;
 scalar_t__ tncs_read_config (TYPE_1__*) ;
 int wpa_printf (int ,char*,...) ;

int tncs_global_init(void)
{
 struct tnc_if_imv *imv;

 if (tncs_global_data)
  return 0;

 tncs_global_data = os_zalloc(sizeof(*tncs_global_data));
 if (tncs_global_data == ((void*)0))
  return -1;

 if (tncs_read_config(tncs_global_data) < 0) {
  wpa_printf(MSG_ERROR, "TNC: Failed to read TNC configuration");
  goto failed;
 }

 for (imv = tncs_global_data->imv; imv; imv = imv->next) {
  if (tncs_load_imv(imv)) {
   wpa_printf(MSG_ERROR, "TNC: Failed to load IMV '%s'",
       imv->name);
   goto failed;
  }
 }

 return 0;

failed:
 tncs_global_deinit();
 return -1;
}
