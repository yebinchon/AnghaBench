
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211req {int i_type; int i_val; int i_len; void* i_data; int i_name; } ;
typedef int ireq ;


 int SIOCS80211 ;
 int assert (int) ;
 scalar_t__ ioctl (int,int ,struct ieee80211req*) ;
 int memset (struct ieee80211req*,int ,int) ;
 int strncpy (int ,char const*,int) ;

int
lib80211_set80211(int s, const char *name, int type, int val, int len, void *data)
{
 struct ieee80211req ireq;

 (void) memset(&ireq, 0, sizeof(ireq));
 (void) strncpy(ireq.i_name, name, sizeof(ireq.i_name));
 ireq.i_type = type;
 ireq.i_val = val;
 ireq.i_len = len;
 assert(ireq.i_len == len);
 ireq.i_data = data;
 if (ioctl(s, SIOCS80211, &ireq) < 0)
  return (-1);
 return (0);
}
