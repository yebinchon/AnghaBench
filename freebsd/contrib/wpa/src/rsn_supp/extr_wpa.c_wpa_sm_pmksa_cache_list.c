
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int pmksa; } ;


 int pmksa_cache_list (int ,char*,size_t) ;

int wpa_sm_pmksa_cache_list(struct wpa_sm *sm, char *buf, size_t len)
{
 return pmksa_cache_list(sm->pmksa, buf, len);
}
