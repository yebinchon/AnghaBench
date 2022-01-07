
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lib80211_get80211 (int,int ,int,void*,int) ;
 int name ;

__attribute__((used)) static int
get80211(int s, int type, void *data, int len)
{

 return (lib80211_get80211(s, name, type, data, len));
}
