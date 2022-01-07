
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_radius_server {struct hostapd_radius_server* shared_secret; } ;


 int os_free (struct hostapd_radius_server*) ;

__attribute__((used)) static void hostapd_config_free_radius(struct hostapd_radius_server *servers,
           int num_servers)
{
 int i;

 for (i = 0; i < num_servers; i++) {
  os_free(servers[i].shared_secret);
 }
 os_free(servers);
}
