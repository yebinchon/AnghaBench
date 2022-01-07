
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_cred {struct wpa_cred* next; } ;
struct TYPE_2__ {struct wpa_cred* cred; } ;


 int interworking_home_sp_cred (struct wpa_supplicant*,struct wpa_cred*,struct wpabuf*) ;

__attribute__((used)) static int interworking_home_sp(struct wpa_supplicant *wpa_s,
    struct wpabuf *domain_names)
{
 struct wpa_cred *cred;

 if (domain_names == ((void*)0) || wpa_s->conf->cred == ((void*)0))
  return -1;

 for (cred = wpa_s->conf->cred; cred; cred = cred->next) {
  int res = interworking_home_sp_cred(wpa_s, cred, domain_names);
  if (res)
   return res;
 }

 return 0;
}
