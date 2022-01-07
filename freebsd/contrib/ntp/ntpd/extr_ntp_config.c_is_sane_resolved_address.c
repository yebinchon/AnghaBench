
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sockaddr_u ;


 scalar_t__ ISBADADR (int *) ;
 int ISREFCLOCKADR (int *) ;
 scalar_t__ IS_IPV6 (int *) ;
 scalar_t__ IS_MCAST (int *) ;
 int LOG_ERR ;
 int T_Manycastclient ;
 int T_Peer ;
 int T_Pool ;
 int T_Server ;
 int ipv6_works ;
 int msyslog (int ,char*,int ) ;
 int stoa (int *) ;

__attribute__((used)) static int
is_sane_resolved_address(
 sockaddr_u * peeraddr,
 int hmode
 )
{
 if (!ISREFCLOCKADR(peeraddr) && ISBADADR(peeraddr)) {
  msyslog(LOG_ERR,
   "attempt to configure invalid address %s",
   stoa(peeraddr));
  return 0;
 }





 if ((T_Server == hmode || T_Peer == hmode || T_Pool == hmode)
     && IS_MCAST(peeraddr)) {
  msyslog(LOG_ERR,
   "attempt to configure invalid address %s",
   stoa(peeraddr));
  return 0;
 }
 if (T_Manycastclient == hmode && !IS_MCAST(peeraddr)) {
  msyslog(LOG_ERR,
   "attempt to configure invalid address %s",
   stoa(peeraddr));
  return 0;
 }

 if (IS_IPV6(peeraddr) && !ipv6_works)
  return 0;


 return 1;
}
