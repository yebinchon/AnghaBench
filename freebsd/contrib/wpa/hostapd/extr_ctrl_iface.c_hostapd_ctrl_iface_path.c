
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int * iface; int * ctrl_interface; } ;


 char* os_malloc (size_t) ;
 int os_snprintf (char*,size_t,char*,int *,int *) ;
 int os_strlen (int *) ;

__attribute__((used)) static char * hostapd_ctrl_iface_path(struct hostapd_data *hapd)
{
 char *buf;
 size_t len;

 if (hapd->conf->ctrl_interface == ((void*)0))
  return ((void*)0);

 len = os_strlen(hapd->conf->ctrl_interface) +
  os_strlen(hapd->conf->iface) + 2;
 buf = os_malloc(len);
 if (buf == ((void*)0))
  return ((void*)0);

 os_snprintf(buf, len, "%s/%s",
      hapd->conf->ctrl_interface, hapd->conf->iface);
 buf[len - 1] = '\0';
 return buf;
}
