
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {char* ifname; int mesh_if_idx; } ;


 scalar_t__ IFNAMSIZ ;
 int os_snprintf (char*,size_t,char*,char*,...) ;
 scalar_t__ os_snprintf_error (size_t,int) ;
 scalar_t__ os_strlen (char*) ;

__attribute__((used)) static int wpas_mesh_get_ifname(struct wpa_supplicant *wpa_s, char *ifname,
    size_t len)
{
 char *ifname_ptr = wpa_s->ifname;
 int res;

 res = os_snprintf(ifname, len, "mesh-%s-%d", ifname_ptr,
     wpa_s->mesh_if_idx);
 if (os_snprintf_error(len, res) ||
     (os_strlen(ifname) >= IFNAMSIZ &&
      os_strlen(wpa_s->ifname) < IFNAMSIZ)) {

  res = os_snprintf(ifname, len, "mesh-%d", wpa_s->mesh_if_idx);
  if (os_snprintf_error(len, res))
   return -1;
 }
 wpa_s->mesh_if_idx++;
 return 0;
}
