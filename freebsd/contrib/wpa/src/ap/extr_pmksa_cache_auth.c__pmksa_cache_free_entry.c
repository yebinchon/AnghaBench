
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsn_pmksa_cache_entry {int radius_class; int cui; int identity; int vlan_desc; } ;


 int bin_clear_free (struct rsn_pmksa_cache_entry*,int) ;
 int os_free (int ) ;
 int radius_free_class (int *) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void _pmksa_cache_free_entry(struct rsn_pmksa_cache_entry *entry)
{
 os_free(entry->vlan_desc);
 os_free(entry->identity);
 wpabuf_free(entry->cui);

 radius_free_class(&entry->radius_class);

 bin_clear_free(entry, sizeof(*entry));
}
