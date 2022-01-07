
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
struct dirent {char* d_name; } ;
typedef int DIR ;


 int closedir (int *) ;
 char* ctrl_iface_dir ;
 int * opendir (char*) ;
 int printf (char*,...) ;
 struct dirent* readdir (int *) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void hostapd_cli_list_interfaces(struct wpa_ctrl *ctrl)
{
 struct dirent *dent;
 DIR *dir;

 dir = opendir(ctrl_iface_dir);
 if (dir == ((void*)0)) {
  printf("Control interface directory '%s' could not be "
         "openned.\n", ctrl_iface_dir);
  return;
 }

 printf("Available interfaces:\n");
 while ((dent = readdir(dir))) {
  if (strcmp(dent->d_name, ".") == 0 ||
      strcmp(dent->d_name, "..") == 0)
   continue;
  printf("%s\n", dent->d_name);
 }
 closedir(dir);
}
