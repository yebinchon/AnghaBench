
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
typedef int cmd ;
typedef int addr ;


 int cli_txt_list_add (int *,char*) ;
 int cli_txt_list_flush (int *) ;
 int interactive ;
 int os_snprintf (char*,int,char*,char*) ;
 scalar_t__ os_strcmp (char*,char*) ;
 int stations ;
 scalar_t__ wpa_ctrl_command_sta (struct wpa_ctrl*,char*,char*,int,int ) ;

__attribute__((used)) static void update_stations(struct wpa_ctrl *ctrl)
{
 char addr[32], cmd[64];

 if (!ctrl || !interactive)
  return;

 cli_txt_list_flush(&stations);

 if (wpa_ctrl_command_sta(ctrl, "STA-FIRST", addr, sizeof(addr), 0))
  return;
 do {
  if (os_strcmp(addr, "") != 0)
   cli_txt_list_add(&stations, addr);
  os_snprintf(cmd, sizeof(cmd), "STA-NEXT %s", addr);
 } while (wpa_ctrl_command_sta(ctrl, cmd, addr, sizeof(addr), 0) == 0);
}
