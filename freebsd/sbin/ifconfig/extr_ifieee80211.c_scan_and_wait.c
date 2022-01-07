
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_msghdr {scalar_t__ rtm_type; scalar_t__ rtm_version; } ;
struct if_announcemsghdr {scalar_t__ ifan_what; } ;
struct ieee80211req {int sr_flags; int i_len; struct ieee80211req* i_data; scalar_t__ sr_nssid; int sr_duration; int i_type; int i_name; } ;
struct ieee80211_scan_req {int sr_flags; int i_len; struct ieee80211_scan_req* i_data; scalar_t__ sr_nssid; int sr_duration; int i_type; int i_name; } ;
typedef int sr ;
typedef int ireq ;
typedef int buf ;


 int IEEE80211_IOC_SCAN_ACTIVE ;
 int IEEE80211_IOC_SCAN_BGSCAN ;
 int IEEE80211_IOC_SCAN_FOREVER ;
 int IEEE80211_IOC_SCAN_NOPICK ;
 int IEEE80211_IOC_SCAN_ONCE ;
 int IEEE80211_IOC_SCAN_REQ ;
 int PF_ROUTE ;
 scalar_t__ RTM_IEEE80211 ;
 scalar_t__ RTM_IEEE80211_SCAN ;
 scalar_t__ RTM_VERSION ;
 int SIOCS80211 ;
 int SOCK_RAW ;
 int close (int) ;
 scalar_t__ ioctl (int,int ,struct ieee80211req*) ;
 int memset (struct ieee80211req*,int ,int) ;
 int name ;
 int perror (char*) ;
 scalar_t__ read (int,char*,int) ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
scan_and_wait(int s)
{
 struct ieee80211_scan_req sr;
 struct ieee80211req ireq;
 int sroute;

 sroute = socket(PF_ROUTE, SOCK_RAW, 0);
 if (sroute < 0) {
  perror("socket(PF_ROUTE,SOCK_RAW)");
  return;
 }
 (void) memset(&ireq, 0, sizeof(ireq));
 (void) strlcpy(ireq.i_name, name, sizeof(ireq.i_name));
 ireq.i_type = IEEE80211_IOC_SCAN_REQ;

 memset(&sr, 0, sizeof(sr));
 sr.sr_flags = IEEE80211_IOC_SCAN_ACTIVE
      | IEEE80211_IOC_SCAN_BGSCAN
      | IEEE80211_IOC_SCAN_NOPICK
      | IEEE80211_IOC_SCAN_ONCE;
 sr.sr_duration = IEEE80211_IOC_SCAN_FOREVER;
 sr.sr_nssid = 0;

 ireq.i_data = &sr;
 ireq.i_len = sizeof(sr);





 if (ioctl(s, SIOCS80211, &ireq) == 0) {
  char buf[2048];
  struct if_announcemsghdr *ifan;
  struct rt_msghdr *rtm;

  do {
   if (read(sroute, buf, sizeof(buf)) < 0) {
    perror("read(PF_ROUTE)");
    break;
   }
   rtm = (struct rt_msghdr *) buf;
   if (rtm->rtm_version != RTM_VERSION)
    break;
   ifan = (struct if_announcemsghdr *) rtm;
  } while (rtm->rtm_type != RTM_IEEE80211 ||
      ifan->ifan_what != RTM_IEEE80211_SCAN);
 }
 close(sroute);
}
