
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ICMP6_ECHO_REPLY ;
 size_t ICMP6_ECHO_REQUEST ;
 int ICMP6_MAXTYPE ;
 size_t ICMP6_MEMBERSHIP_QUERY ;
 int ICMP6_MEMBERSHIP_REPORT ;
 size_t ICMP6_NI_QUERY ;
 int ICMP6_NI_REPLY ;
 size_t ICMP_ECHO ;
 int ICMP_ECHOREPLY ;
 size_t ICMP_IREQ ;
 int ICMP_IREQREPLY ;
 int ICMP_MASKREPLY ;
 size_t ICMP_MASKREQ ;
 int ICMP_MAXTYPE ;
 size_t ICMP_TSTAMP ;
 int ICMP_TSTAMPREPLY ;
 int ND_NEIGHBOR_ADVERT ;
 size_t ND_NEIGHBOR_SOLICIT ;
 int ND_ROUTER_ADVERT ;
 size_t ND_ROUTER_SOLICIT ;
 int* icmpreplytype4 ;
 int* icmpreplytype6 ;

int
ipf_main_load()
{
 int i;


 for (i = 0; i <= ICMP_MAXTYPE; i++)
  icmpreplytype4[i] = -1;
 icmpreplytype4[ICMP_ECHO] = ICMP_ECHOREPLY;
 icmpreplytype4[ICMP_TSTAMP] = ICMP_TSTAMPREPLY;
 icmpreplytype4[ICMP_IREQ] = ICMP_IREQREPLY;
 icmpreplytype4[ICMP_MASKREQ] = ICMP_MASKREPLY;
 return 0;
}
