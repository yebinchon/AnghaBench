
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_cred {int id; struct wpa_cred* next; } ;
struct wpa_config {struct wpa_cred* cred; } ;


 int wpa_config_free_cred (struct wpa_cred*) ;

int wpa_config_remove_cred(struct wpa_config *config, int id)
{
 struct wpa_cred *cred, *prev = ((void*)0);

 cred = config->cred;
 while (cred) {
  if (id == cred->id)
   break;
  prev = cred;
  cred = cred->next;
 }

 if (cred == ((void*)0))
  return -1;

 if (prev)
  prev->next = cred->next;
 else
  config->cred = cred->next;

 wpa_config_free_cred(cred);
 return 0;
}
