
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_cred {scalar_t__ roaming_partner; scalar_t__ imsi; scalar_t__ pcsc; scalar_t__ domain; struct wpa_cred* next; } ;
struct TYPE_2__ {struct wpa_cred* cred; } ;



__attribute__((used)) static int cred_with_domain(struct wpa_supplicant *wpa_s)
{
 struct wpa_cred *cred;

 for (cred = wpa_s->conf->cred; cred; cred = cred->next) {
  if (cred->domain || cred->pcsc || cred->imsi ||
      cred->roaming_partner)
   return 1;
 }
 return 0;
}
