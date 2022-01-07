
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_channel_data {int flag; } ;
typedef int info ;



 int HOSTAPD_CHAN_DFS_MASK ;



 int os_snprintf (char*,int,char*,char*) ;

__attribute__((used)) static char * dfs_info(struct hostapd_channel_data *chan)
{
 static char info[256];
 char *state;

 switch (chan->flag & HOSTAPD_CHAN_DFS_MASK) {
 case 129:
  state = "unknown";
  break;
 case 128:
  state = "usable";
  break;
 case 130:
  state = "unavailable";
  break;
 case 131:
  state = "available";
  break;
 default:
  return "";
 }
 os_snprintf(info, sizeof(info), " (DFS state = %s)", state);
 info[sizeof(info) - 1] = '\0';

 return info;
}
