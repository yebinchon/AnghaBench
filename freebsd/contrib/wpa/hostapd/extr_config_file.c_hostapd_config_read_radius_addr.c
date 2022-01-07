
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_radius_server {int port; int index; int addr; } ;


 int hostapd_parse_ip_addr (char const*,int *) ;
 int os_memset (struct hostapd_radius_server*,int ,int) ;
 struct hostapd_radius_server* os_realloc_array (struct hostapd_radius_server*,int,int) ;

__attribute__((used)) static int
hostapd_config_read_radius_addr(struct hostapd_radius_server **server,
    int *num_server, const char *val, int def_port,
    struct hostapd_radius_server **curr_serv)
{
 struct hostapd_radius_server *nserv;
 int ret;
 static int server_index = 1;

 nserv = os_realloc_array(*server, *num_server + 1, sizeof(*nserv));
 if (nserv == ((void*)0))
  return -1;

 *server = nserv;
 nserv = &nserv[*num_server];
 (*num_server)++;
 (*curr_serv) = nserv;

 os_memset(nserv, 0, sizeof(*nserv));
 nserv->port = def_port;
 ret = hostapd_parse_ip_addr(val, &nserv->addr);
 nserv->index = server_index++;

 return ret;
}
