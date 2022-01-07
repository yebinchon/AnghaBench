
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211req {int i_val; size_t i_len; void* i_data; int i_type; int i_name; } ;
typedef int ireq ;


 int IEEE80211_IOC_MESH_ID ;
 int IEEE80211_IOC_SSID ;
 int SIOCG80211 ;
 scalar_t__ ioctl (int,int ,struct ieee80211req*) ;
 int memset (struct ieee80211req*,int ,int) ;
 int name ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int
getid(int s, int ix, void *data, size_t len, int *plen, int mesh)
{
 struct ieee80211req ireq;

 (void) memset(&ireq, 0, sizeof(ireq));
 (void) strlcpy(ireq.i_name, name, sizeof(ireq.i_name));
 ireq.i_type = (!mesh) ? IEEE80211_IOC_SSID : IEEE80211_IOC_MESH_ID;
 ireq.i_val = ix;
 ireq.i_data = data;
 ireq.i_len = len;
 if (ioctl(s, SIOCG80211, &ireq) < 0)
  return -1;
 *plen = ireq.i_len;
 return 0;
}
