
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_DEBUG ;
 int MSG_EXCESSIVE ;
 scalar_t__ os_strcmp (char const*,char*) ;
 scalar_t__ os_strncmp (char const*,char*,int) ;

__attribute__((used)) static int wpas_ctrl_cmd_debug_level(const char *cmd)
{
 if (os_strcmp(cmd, "PING") == 0 ||
     os_strncmp(cmd, "BSS ", 4) == 0 ||
     os_strncmp(cmd, "GET_NETWORK ", 12) == 0 ||
     os_strncmp(cmd, "STATUS", 6) == 0 ||
     os_strncmp(cmd, "STA ", 4) == 0 ||
     os_strncmp(cmd, "STA-", 4) == 0)
  return MSG_EXCESSIVE;
 return MSG_DEBUG;
}
