
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_neighbor_entry {scalar_t__ stationary; int ssid; int * bssid; int * civic; int * lci; int * nr; } ;


 int os_memset (int *,int ,int) ;
 int wpabuf_free (int *) ;

__attribute__((used)) static void hostapd_neighbor_clear_entry(struct hostapd_neighbor_entry *nr)
{
 wpabuf_free(nr->nr);
 nr->nr = ((void*)0);
 wpabuf_free(nr->lci);
 nr->lci = ((void*)0);
 wpabuf_free(nr->civic);
 nr->civic = ((void*)0);
 os_memset(nr->bssid, 0, sizeof(nr->bssid));
 os_memset(&nr->ssid, 0, sizeof(nr->ssid));
 nr->stationary = 0;
}
