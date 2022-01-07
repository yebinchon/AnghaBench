
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int action_file ;
 int ctrl_ifname ;
 int hostapd_cli_exec (int ,int ,char const*) ;
 char* os_strchr (char const*,char) ;

__attribute__((used)) static void hostapd_cli_action_process(char *msg, size_t len)
{
 const char *pos;

 pos = msg;
 if (*pos == '<') {
  pos = os_strchr(pos, '>');
  if (pos)
   pos++;
  else
   pos = msg;
 }

 hostapd_cli_exec(action_file, ctrl_ifname, pos);
}
