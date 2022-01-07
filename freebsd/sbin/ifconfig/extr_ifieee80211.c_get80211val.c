
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lib80211_get80211val (int,int ,int,int*) ;
 int name ;

__attribute__((used)) static int
get80211val(int s, int type, int *val)
{

 return (lib80211_get80211val(s, name, type, val));
}
