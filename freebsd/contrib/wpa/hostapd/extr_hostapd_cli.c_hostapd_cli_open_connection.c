
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;


 int F_OK ;
 scalar_t__ access (scalar_t__*,int ) ;
 scalar_t__* client_socket_dir ;
 struct wpa_ctrl* ctrl_conn ;
 char* ctrl_iface_dir ;
 int free (char*) ;
 char* malloc (int) ;
 int perror (scalar_t__*) ;
 int snprintf (char*,int,char*,char*,char const*) ;
 int strlen (char const*) ;
 struct wpa_ctrl* wpa_ctrl_open (char const*) ;
 struct wpa_ctrl* wpa_ctrl_open2 (char*,scalar_t__*) ;

__attribute__((used)) static struct wpa_ctrl * hostapd_cli_open_connection(const char *ifname)
{

 char *cfile;
 int flen;


 if (ifname == ((void*)0))
  return ((void*)0);





 flen = strlen(ctrl_iface_dir) + strlen(ifname) + 2;
 cfile = malloc(flen);
 if (cfile == ((void*)0))
  return ((void*)0);
 snprintf(cfile, flen, "%s/%s", ctrl_iface_dir, ifname);

 if (client_socket_dir && client_socket_dir[0] &&
     access(client_socket_dir, F_OK) < 0) {
  perror(client_socket_dir);
  free(cfile);
  return ((void*)0);
 }

 ctrl_conn = wpa_ctrl_open2(cfile, client_socket_dir);
 free(cfile);
 return ctrl_conn;

}
