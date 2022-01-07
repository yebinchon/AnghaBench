
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct hostapd_data {TYPE_2__* conf; } ;
struct TYPE_4__ {int sae_groups; } ;
struct TYPE_3__ {scalar_t__* sae_groups; } ;


 int os_malloc (size_t) ;
 int os_memcpy (int ,scalar_t__*,size_t) ;

__attribute__((used)) static void wpas_mesh_copy_groups(struct hostapd_data *bss,
      struct wpa_supplicant *wpa_s)
{
 int num_groups;
 size_t groups_size;

 for (num_groups = 0; wpa_s->conf->sae_groups[num_groups] > 0;
      num_groups++)
  ;

 groups_size = (num_groups + 1) * sizeof(wpa_s->conf->sae_groups[0]);
 bss->conf->sae_groups = os_malloc(groups_size);
 if (bss->conf->sae_groups)
  os_memcpy(bss->conf->sae_groups, wpa_s->conf->sae_groups,
     groups_size);
}
