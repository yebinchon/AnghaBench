
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_config {int acs_ch_list; } ;


 scalar_t__ freq_range_list_parse (int *,char*) ;
 char* os_strchr (char*,char) ;

__attribute__((used)) static int hostapd_parse_chanlist(struct hostapd_config *conf, char *val)
{
 char *pos;


 pos = val;
 while (pos) {
  pos = os_strchr(pos, ' ');
  if (pos)
   *pos++ = ',';
 }
 if (freq_range_list_parse(&conf->acs_ch_list, val))
  return -1;

 return 0;
}
