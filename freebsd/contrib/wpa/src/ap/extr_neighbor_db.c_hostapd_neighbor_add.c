
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_neighbor_entry {int list; } ;
struct hostapd_data {int nr_db; } ;


 int dl_list_add (int *,int *) ;
 struct hostapd_neighbor_entry* os_zalloc (int) ;

__attribute__((used)) static struct hostapd_neighbor_entry *
hostapd_neighbor_add(struct hostapd_data *hapd)
{
 struct hostapd_neighbor_entry *nr;

 nr = os_zalloc(sizeof(struct hostapd_neighbor_entry));
 if (!nr)
  return ((void*)0);

 dl_list_add(&hapd->nr_db, &nr->list);

 return nr;
}
