
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211req {int i_type; int i_len; void* i_data; int i_name; } ;
typedef int ireq ;


 int SIOCG80211 ;
 int ioctl (int,int ,struct ieee80211req*) ;
 int memset (struct ieee80211req*,int ,int) ;
 int strncpy (int ,char const*,int) ;

int
lib80211_get80211(int s, const char *name, int type, void *data, int len)
{
 struct ieee80211req ireq;

 (void) memset(&ireq, 0, sizeof(ireq));
 (void) strncpy(ireq.i_name, name, sizeof(ireq.i_name));
 ireq.i_type = type;
 ireq.i_data = data;
 ireq.i_len = len;
 return ioctl(s, SIOCG80211, &ireq);
}
