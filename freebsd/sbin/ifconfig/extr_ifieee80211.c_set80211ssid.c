
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct afswtch {int dummy; } ;
typedef int data ;


 int IEEE80211_IOC_SSID ;
 int IEEE80211_NWID_LEN ;
 int atoi (char const*) ;
 int bzero (int *,int) ;
 int exit (int) ;
 int * get_string (char const*,int *,int *,int*) ;
 scalar_t__ isdigit (int) ;
 int set80211 (int,int ,int,int,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static void
set80211ssid(const char *val, int d, int s, const struct afswtch *rafp)
{
 int ssid;
 int len;
 u_int8_t data[IEEE80211_NWID_LEN];

 ssid = 0;
 len = strlen(val);
 if (len > 2 && isdigit((int)val[0]) && val[1] == ':') {
  ssid = atoi(val)-1;
  val += 2;
 }

 bzero(data, sizeof(data));
 len = sizeof(data);
 if (get_string(val, ((void*)0), data, &len) == ((void*)0))
  exit(1);

 set80211(s, IEEE80211_IOC_SSID, ssid, len, data);
}
