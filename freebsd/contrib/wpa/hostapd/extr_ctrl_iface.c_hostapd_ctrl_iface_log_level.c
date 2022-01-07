
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dummy; } ;


 int atoi (char*) ;
 int debug_level_str (int) ;
 int os_memcpy (char*,char*,int) ;
 int os_snprintf (char*,int,char*,int ,int ) ;
 scalar_t__ os_snprintf_error (int,int) ;
 char* os_strchr (char*,char) ;
 scalar_t__ os_strlen (char*) ;
 int str_to_debug_level (char*) ;
 int wpa_debug_level ;
 int wpa_debug_timestamp ;

__attribute__((used)) static int hostapd_ctrl_iface_log_level(struct hostapd_data *hapd, char *cmd,
     char *buf, size_t buflen)
{
 char *pos, *end, *stamp;
 int ret;


 if (*cmd == '\0') {
  pos = buf;
  end = buf + buflen;
  ret = os_snprintf(pos, end - pos, "Current level: %s\n"
      "Timestamp: %d\n",
      debug_level_str(wpa_debug_level),
      wpa_debug_timestamp);
  if (os_snprintf_error(end - pos, ret))
   ret = 0;

  return ret;
 }

 while (*cmd == ' ')
  cmd++;

 stamp = os_strchr(cmd, ' ');
 if (stamp) {
  *stamp++ = '\0';
  while (*stamp == ' ') {
   stamp++;
  }
 }

 if (os_strlen(cmd)) {
  int level = str_to_debug_level(cmd);
  if (level < 0)
   return -1;
  wpa_debug_level = level;
 }

 if (stamp && os_strlen(stamp))
  wpa_debug_timestamp = atoi(stamp);

 os_memcpy(buf, "OK\n", 3);
 return 3;
}
