
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* module_data; } ;
typedef TYPE_1__ pam_handle_t ;
struct TYPE_5__ {scalar_t__ data; int name; struct TYPE_5__* next; } ;
typedef TYPE_2__ pam_data_t ;


 int ENTERS (char const*) ;
 int PAM_NO_MODULE_DATA ;
 int PAM_SUCCESS ;
 int RETURNC (int ) ;
 scalar_t__ strcmp (int ,char const*) ;

int
pam_get_data(const pam_handle_t *pamh,
 const char *module_data_name,
 const void **data)
{
 pam_data_t *dp;

 ENTERS(module_data_name);
 for (dp = pamh->module_data; dp != ((void*)0); dp = dp->next) {
  if (strcmp(dp->name, module_data_name) == 0) {
   *data = (void *)dp->data;
   RETURNC(PAM_SUCCESS);
  }
 }
 RETURNC(PAM_NO_MODULE_DATA);
}
