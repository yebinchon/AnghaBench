
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** hostapd_cli_cmd_completion (char*,char const*,int) ;
 char** list_cmd_list () ;
 int os_free (char*) ;
 char* os_malloc (int) ;
 int os_memcpy (char*,char const*,int) ;
 char* os_strchr (char const*,char) ;

__attribute__((used)) static char ** hostapd_cli_edit_completion_cb(void *ctx, const char *str,
           int pos)
{
 char **res;
 const char *end;
 char *cmd;

 end = os_strchr(str, ' ');
 if (end == ((void*)0) || str + pos < end)
  return list_cmd_list();

 cmd = os_malloc(pos + 1);
 if (cmd == ((void*)0))
  return ((void*)0);
 os_memcpy(cmd, str, pos);
 cmd[end - str] = '\0';
 res = hostapd_cli_cmd_completion(cmd, str, pos);
 os_free(cmd);
 return res;
}
