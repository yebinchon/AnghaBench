
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int IEEE80211_NWID_LEN ;
 char* copy_essid (char*,int,int const*,int const) ;
 int printf (char*,char const*,char*,char*) ;

__attribute__((used)) static void
printssid(const char *tag, const u_int8_t *ie, size_t ielen, int maxlen)
{
 char ssid[2*IEEE80211_NWID_LEN+1];

 printf("%s<%.*s>", tag, copy_essid(ssid, maxlen, ie+2, ie[1]), ssid);
}
