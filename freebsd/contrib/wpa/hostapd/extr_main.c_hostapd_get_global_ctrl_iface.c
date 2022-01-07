
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hapd_interfaces {char* global_iface_name; int * global_iface_path; } ;


 int MSG_ERROR ;
 int os_free (int *) ;
 int * os_strdup (char const*) ;
 char* os_strrchr (int *,char) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int hostapd_get_global_ctrl_iface(struct hapd_interfaces *interfaces,
      const char *path)
{

 char *pos;


 os_free(interfaces->global_iface_path);
 interfaces->global_iface_path = os_strdup(path);
 if (interfaces->global_iface_path == ((void*)0))
  return -1;


 pos = os_strrchr(interfaces->global_iface_path, '/');
 if (pos == ((void*)0)) {
  wpa_printf(MSG_ERROR, "No '/' in the global control interface "
      "file");
  os_free(interfaces->global_iface_path);
  interfaces->global_iface_path = ((void*)0);
  return -1;
 }

 *pos = '\0';
 interfaces->global_iface_name = pos + 1;


 return 0;
}
