
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct afswtch {int dummy; } ;
typedef int data ;


 int IEEE80211_IOC_WEPKEY ;
 int IEEE80211_KEYBUF_SIZE ;
 int atoi (char const*) ;
 int bzero (int *,int) ;
 int get_string (char const*,int *,int *,int*) ;
 scalar_t__ isdigit (int) ;
 int set80211 (int,int ,int,int,int *) ;

__attribute__((used)) static void
set80211wepkey(const char *val, int d, int s, const struct afswtch *rafp)
{
 int key = 0;
 int len;
 u_int8_t data[IEEE80211_KEYBUF_SIZE];

 if (isdigit((int)val[0]) && val[1] == ':') {
  key = atoi(val)-1;
  val += 2;
 }

 bzero(data, sizeof(data));
 len = sizeof(data);
 get_string(val, ((void*)0), data, &len);

 set80211(s, IEEE80211_IOC_WEPKEY, key, len, data);
}
