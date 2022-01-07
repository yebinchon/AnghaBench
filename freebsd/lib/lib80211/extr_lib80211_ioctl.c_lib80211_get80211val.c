
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211req {int i_type; int i_val; int i_name; } ;
typedef int ireq ;


 int SIOCG80211 ;
 scalar_t__ ioctl (int,int ,struct ieee80211req*) ;
 int memset (struct ieee80211req*,int ,int) ;
 int strncpy (int ,char const*,int) ;

int
lib80211_get80211val(int s, const char *name, int type, int *val)
{
 struct ieee80211req ireq;

 (void) memset(&ireq, 0, sizeof(ireq));
 (void) strncpy(ireq.i_name, name, sizeof(ireq.i_name));
 ireq.i_type = type;
 if (ioctl(s, SIOCG80211, &ireq) < 0)
  return -1;
 *val = ireq.i_val;
 return 0;
}
