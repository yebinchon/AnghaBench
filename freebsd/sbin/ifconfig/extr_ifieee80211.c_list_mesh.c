
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211req_mesh_route {int imr_nhops; int imr_metric; int imr_lifetime; int imr_lastmseq; int imr_flags; scalar_t__ imr_nexthop; scalar_t__ imr_dest; } ;
struct ieee80211req {int i_len; struct ieee80211req_mesh_route** i_data; int i_val; int i_type; int i_name; } ;
struct ether_addr {int dummy; } ;
typedef int routes ;
typedef int ireq ;


 int IEEE80211_IOC_MESH_RTCMD ;
 int IEEE80211_MESHRT_FLAGS_DISCOVER ;
 int IEEE80211_MESHRT_FLAGS_GATE ;
 int IEEE80211_MESHRT_FLAGS_PROXY ;
 int IEEE80211_MESHRT_FLAGS_VALID ;
 int IEEE80211_MESH_RTCMD_LIST ;
 int SIOCG80211 ;
 int err (int,char*) ;
 char* ether_ntoa (struct ether_addr const*) ;
 scalar_t__ ioctl (int,int ,struct ieee80211req*) ;
 int memset (struct ieee80211req*,int ,int) ;
 int name ;
 int printf (char*,char*,...) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
list_mesh(int s)
{
 struct ieee80211req ireq;
 struct ieee80211req_mesh_route routes[128];
 struct ieee80211req_mesh_route *rt;

 (void) memset(&ireq, 0, sizeof(ireq));
 (void) strlcpy(ireq.i_name, name, sizeof(ireq.i_name));
 ireq.i_type = IEEE80211_IOC_MESH_RTCMD;
 ireq.i_val = IEEE80211_MESH_RTCMD_LIST;
 ireq.i_data = &routes;
 ireq.i_len = sizeof(routes);
 if (ioctl(s, SIOCG80211, &ireq) < 0)
   err(1, "unable to get the Mesh routing table");

 printf("%-17.17s %-17.17s %4s %4s %4s %6s %s\n"
  , "DEST"
  , "NEXT HOP"
  , "HOPS"
  , "METRIC"
  , "LIFETIME"
  , "MSEQ"
  , "FLAGS");

 for (rt = &routes[0]; rt - &routes[0] < ireq.i_len / sizeof(*rt); rt++){
  printf("%s ",
      ether_ntoa((const struct ether_addr *)rt->imr_dest));
  printf("%s %4u   %4u   %6u %6u    %c%c\n",
   ether_ntoa((const struct ether_addr *)rt->imr_nexthop),
   rt->imr_nhops, rt->imr_metric, rt->imr_lifetime,
   rt->imr_lastmseq,
   (rt->imr_flags & IEEE80211_MESHRT_FLAGS_DISCOVER) ?
       'D' :
   (rt->imr_flags & IEEE80211_MESHRT_FLAGS_VALID) ?
       'V' : '!',
   (rt->imr_flags & IEEE80211_MESHRT_FLAGS_PROXY) ?
       'P' :
   (rt->imr_flags & IEEE80211_MESHRT_FLAGS_GATE) ?
       'G' :' ');
 }
}
