
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct in_addr {int dummy; } ;
struct sockaddr_in {scalar_t__ sin_port; struct in_addr sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct ip {scalar_t__ ip_p; int ip_hl; int ip_len; int ip_v; struct in_addr ip_dst; struct in_addr ip_src; scalar_t__ ip_tos; int ip_off; } ;
struct icmp {scalar_t__ icmp_cksum; struct ip icmp_ip; void* icmp_nextmtu; scalar_t__ icmp_void; int icmp_code; int icmp_type; } ;


 int AF_INET ;
 int ICMP_MINLEN ;
 int ICMP_UNREACH ;
 int ICMP_UNREACH_NEEDFRAG ;
 scalar_t__ IPPROTO_ICMP ;
 int IP_DF ;
 int IP_MAXPACKET ;
 int IP_MF ;
 int LibAliasIn (int ,char*,int) ;
 scalar_t__ LibAliasInternetChecksum (int ,int *,int) ;
 int Warn (char*) ;
 void* htons (int) ;
 int memcpy (struct ip*,struct ip*,int) ;
 int mla ;
 int ntohs (int ) ;
 int sendto (int,struct icmp*,int,int ,struct sockaddr*,int) ;

int SendNeedFragIcmp (int sock, struct ip* failedDgram, int mtu)
{
 char icmpBuf[IP_MAXPACKET];
 struct ip* ip;
 struct icmp* icmp;
 int icmpLen;
 int failBytes;
 int failHdrLen;
 struct sockaddr_in addr;
 int wrote;
 struct in_addr swap;




 if (ntohs (failedDgram->ip_off) & ~(IP_MF | IP_DF))
  return 0;



 if (failedDgram->ip_p == IPPROTO_ICMP)
  return 0;



 ip = (struct ip*) icmpBuf;
 icmp = (struct icmp*) (icmpBuf + sizeof (struct ip));



 icmp->icmp_type = ICMP_UNREACH;
 icmp->icmp_code = ICMP_UNREACH_NEEDFRAG;
 icmp->icmp_cksum = 0;
 icmp->icmp_void = 0;
 icmp->icmp_nextmtu = htons (mtu);



 failHdrLen = (failedDgram->ip_hl << 2);
 failBytes = failedDgram->ip_len - failHdrLen;
 if (failBytes > 8)
  failBytes = 8;

 failBytes += failHdrLen;
 icmpLen = ICMP_MINLEN + failBytes;

 memcpy (&icmp->icmp_ip, failedDgram, failBytes);



 icmp->icmp_cksum = LibAliasInternetChecksum (mla, (u_short*) icmp,
       icmpLen);



 memcpy (ip, failedDgram, sizeof (struct ip));

 ip->ip_v = 4;
 ip->ip_hl = 5;
 ip->ip_len = htons (sizeof (struct ip) + icmpLen);
 ip->ip_p = IPPROTO_ICMP;
 ip->ip_tos = 0;

 swap = ip->ip_dst;
 ip->ip_dst = ip->ip_src;
 ip->ip_src = swap;

 LibAliasIn (mla, (char*) ip, IP_MAXPACKET);

 addr.sin_family = AF_INET;
 addr.sin_addr = ip->ip_dst;
 addr.sin_port = 0;



 wrote = sendto (sock,
          icmp,
       icmpLen,
       0,
       (struct sockaddr*) &addr,
       sizeof addr);

 if (wrote != icmpLen)
  Warn ("Cannot send ICMP message.");

 return 1;
}
