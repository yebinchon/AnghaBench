
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* module_data; } ;
typedef TYPE_1__ pam_handle_t ;
struct TYPE_10__ {void (* cleanup ) (TYPE_1__*,void*,int) ;void* data; struct TYPE_10__* next; int * name; } ;
typedef TYPE_3__ pam_data_t ;


 int ENTERS (char const*) ;
 int FREE (TYPE_3__*) ;
 int PAM_BUF_ERR ;
 int PAM_SUCCESS ;
 int RETURNC (int) ;
 TYPE_3__* malloc (int) ;
 scalar_t__ strcmp (int *,char const*) ;
 int * strdup (char const*) ;
 void stub1 (TYPE_1__*,void*,int) ;

int
pam_set_data(pam_handle_t *pamh,
 const char *module_data_name,
 void *data,
 void (*cleanup)(pam_handle_t *pamh,
  void *data,
  int pam_end_status))
{
 pam_data_t *dp;

 ENTERS(module_data_name);
 for (dp = pamh->module_data; dp != ((void*)0); dp = dp->next) {
  if (strcmp(dp->name, module_data_name) == 0) {
   if (dp->cleanup)
    (dp->cleanup)(pamh, dp->data, PAM_SUCCESS);
   dp->data = data;
   dp->cleanup = cleanup;
   RETURNC(PAM_SUCCESS);
  }
 }
 if ((dp = malloc(sizeof *dp)) == ((void*)0))
  RETURNC(PAM_BUF_ERR);
 if ((dp->name = strdup(module_data_name)) == ((void*)0)) {
  FREE(dp);
  RETURNC(PAM_BUF_ERR);
 }
 dp->data = data;
 dp->cleanup = cleanup;
 dp->next = pamh->module_data;
 pamh->module_data = dp;
 RETURNC(PAM_SUCCESS);
}
