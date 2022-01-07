
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
typedef int buf ;


 int * ctrl_conn ;
 int hostapd_cli_msg_cb ;
 scalar_t__ memcmp (char*,char*,int) ;
 int os_strlcpy (char*,char*,size_t) ;
 int printf (char*,...) ;
 int strlen (char const*) ;
 int wpa_ctrl_request (struct wpa_ctrl*,char const*,int ,char*,size_t*,int ) ;

__attribute__((used)) static int wpa_ctrl_command_sta(struct wpa_ctrl *ctrl, const char *cmd,
    char *addr, size_t addr_len, int print)
{
 char buf[4096], *pos;
 size_t len;
 int ret;

 if (ctrl_conn == ((void*)0)) {
  printf("Not connected to hostapd - command dropped.\n");
  return -1;
 }
 len = sizeof(buf) - 1;
 ret = wpa_ctrl_request(ctrl, cmd, strlen(cmd), buf, &len,
          hostapd_cli_msg_cb);
 if (ret == -2) {
  printf("'%s' command timed out.\n", cmd);
  return -2;
 } else if (ret < 0) {
  printf("'%s' command failed.\n", cmd);
  return -1;
 }

 buf[len] = '\0';
 if (memcmp(buf, "FAIL", 4) == 0)
  return -1;
 if (print)
  printf("%s", buf);

 pos = buf;
 while (*pos != '\0' && *pos != '\n')
  pos++;
 *pos = '\0';
 os_strlcpy(addr, buf, addr_len);
 return 0;
}
