
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lib80211_get80211len (int,int ,int,void*,int,int*) ;
 int name ;

__attribute__((used)) static int
get80211len(int s, int type, void *data, int len, int *plen)
{

 return (lib80211_get80211len(s, name, type, data, len, plen));
}
