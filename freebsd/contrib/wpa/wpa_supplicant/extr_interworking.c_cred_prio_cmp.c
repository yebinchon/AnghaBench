
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_cred {scalar_t__ priority; scalar_t__ sp_priority; int * provisioning_sp; } ;


 scalar_t__ os_strcmp (int *,int *) ;

__attribute__((used)) static int cred_prio_cmp(const struct wpa_cred *a, const struct wpa_cred *b)
{
 if (a->priority > b->priority)
  return 1;
 if (a->priority < b->priority)
  return -1;
 if (a->provisioning_sp == ((void*)0) || b->provisioning_sp == ((void*)0) ||
     os_strcmp(a->provisioning_sp, b->provisioning_sp) != 0)
  return 0;
 if (a->sp_priority < b->sp_priority)
  return 1;
 if (a->sp_priority > b->sp_priority)
  return -1;
 return 0;
}
