
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_cred {int id; struct wpa_cred* next; } ;
struct wpa_config {struct wpa_cred* cred; } ;



struct wpa_cred * wpa_config_get_cred(struct wpa_config *config, int id)
{
 struct wpa_cred *cred;

 cred = config->cred;
 while (cred) {
  if (id == cred->id)
   break;
  cred = cred->next;
 }

 return cred;
}
