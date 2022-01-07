
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct afswtch {int dummy; } ;
typedef int data ;


 int IEEE80211_IOC_STATIONNAME ;
 int bzero (int *,int) ;
 int get_string (char const*,int *,int *,int*) ;
 int set80211 (int,int ,int ,int,int *) ;

__attribute__((used)) static void
set80211stationname(const char *val, int d, int s, const struct afswtch *rafp)
{
 int len;
 u_int8_t data[33];

 bzero(data, sizeof(data));
 len = sizeof(data);
 get_string(val, ((void*)0), data, &len);

 set80211(s, IEEE80211_IOC_STATIONNAME, 0, len, data);
}
