
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 int lib80211_set80211 (int,int ,int,int,int,void*) ;
 int name ;

__attribute__((used)) static void
set80211(int s, int type, int val, int len, void *data)
{
 int ret;

 ret = lib80211_set80211(s, name, type, val, len, data);
 if (ret < 0)
  err(1, "SIOCS80211");
}
