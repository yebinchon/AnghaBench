
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
struct dl_list {int dummy; } ;
struct dirent {int d_name; } ;
typedef int DIR ;


 int cli_txt_list_add (struct dl_list*,int ) ;
 int closedir (int *) ;
 int ctrl_iface_dir ;
 int * opendir (int ) ;
 struct dirent* readdir (int *) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void hostapd_cli_get_interfaces(struct wpa_ctrl *ctrl,
           struct dl_list *interfaces)
{
 struct dirent *dent;
 DIR *dir;

 if (!ctrl || !interfaces)
  return;
 dir = opendir(ctrl_iface_dir);
 if (dir == ((void*)0))
  return;

 while ((dent = readdir(dir))) {
  if (strcmp(dent->d_name, ".") == 0 ||
      strcmp(dent->d_name, "..") == 0)
   continue;
  cli_txt_list_add(interfaces, dent->d_name);
 }
 closedir(dir);
}
