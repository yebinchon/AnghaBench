
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_cached_radius_acl {int psk; struct hostapd_cached_radius_acl* radius_cui; struct hostapd_cached_radius_acl* identity; } ;


 int hostapd_free_psk_list (int ) ;
 int os_free (struct hostapd_cached_radius_acl*) ;

__attribute__((used)) static void hostapd_acl_cache_free_entry(struct hostapd_cached_radius_acl *e)
{
 os_free(e->identity);
 os_free(e->radius_cui);
 hostapd_free_psk_list(e->psk);
 os_free(e);
}
