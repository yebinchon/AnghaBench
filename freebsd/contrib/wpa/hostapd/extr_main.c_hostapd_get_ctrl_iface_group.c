
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hapd_interfaces {int ctrl_iface_group; } ;
struct group {int gr_gid; } ;


 int MSG_ERROR ;
 struct group* getgrnam (char const*) ;
 int wpa_printf (int ,char*,char const*) ;

__attribute__((used)) static int hostapd_get_ctrl_iface_group(struct hapd_interfaces *interfaces,
     const char *group)
{

 struct group *grp;
 grp = getgrnam(group);
 if (grp == ((void*)0)) {
  wpa_printf(MSG_ERROR, "Unknown group '%s'", group);
  return -1;
 }
 interfaces->ctrl_iface_group = grp->gr_gid;

 return 0;
}
