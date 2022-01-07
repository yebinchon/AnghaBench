
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {char* ifname; TYPE_1__* conf; } ;
struct TYPE_2__ {int * ctrl_interface; } ;


 int os_free (char*) ;
 char* os_malloc (size_t) ;
 int os_snprintf (char*,size_t,char*,char*,char*) ;
 scalar_t__ os_snprintf_error (size_t,int) ;
 char* os_strdup (int *) ;
 int os_strlen (char*) ;
 scalar_t__ os_strncmp (char*,char*,int) ;
 char* os_strstr (char*,char*) ;

__attribute__((used)) static char * wpa_supplicant_ctrl_iface_path(struct wpa_supplicant *wpa_s)
{
 char *buf;
 size_t len;
 char *pbuf, *dir = ((void*)0);
 int res;

 if (wpa_s->conf->ctrl_interface == ((void*)0))
  return ((void*)0);

 pbuf = os_strdup(wpa_s->conf->ctrl_interface);
 if (pbuf == ((void*)0))
  return ((void*)0);
 if (os_strncmp(pbuf, "DIR=", 4) == 0) {
  char *gid_str;
  dir = pbuf + 4;
  gid_str = os_strstr(dir, " GROUP=");
  if (gid_str)
   *gid_str = '\0';
 } else
  dir = pbuf;

 len = os_strlen(dir) + os_strlen(wpa_s->ifname) + 2;
 buf = os_malloc(len);
 if (buf == ((void*)0)) {
  os_free(pbuf);
  return ((void*)0);
 }

 res = os_snprintf(buf, len, "%s/%s", dir, wpa_s->ifname);
 if (os_snprintf_error(len, res)) {
  os_free(pbuf);
  os_free(buf);
  return ((void*)0);
 }
 os_free(pbuf);
 return buf;
}
