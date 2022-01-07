
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hapd_interfaces {int * global_iface_name; int * global_iface_path; } ;


 char* os_malloc (size_t) ;
 int os_snprintf (char*,size_t,char*,int *,int *) ;
 int os_strlen (int *) ;

__attribute__((used)) static char * hostapd_global_ctrl_iface_path(struct hapd_interfaces *interface)
{
 char *buf;
 size_t len;

 if (interface->global_iface_path == ((void*)0))
  return ((void*)0);

 len = os_strlen(interface->global_iface_path) +
  os_strlen(interface->global_iface_name) + 2;
 buf = os_malloc(len);
 if (buf == ((void*)0))
  return ((void*)0);

 os_snprintf(buf, len, "%s/%s", interface->global_iface_path,
      interface->global_iface_name);
 buf[len - 1] = '\0';
 return buf;
}
