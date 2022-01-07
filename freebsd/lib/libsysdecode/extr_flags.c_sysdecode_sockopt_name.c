
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPPROTO_SCTP ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int IPPROTO_UDPLITE ;
 int SOL_SOCKET ;
 char const* lookup_value (int ,int) ;
 int sockopt ;
 int sockoptip ;
 int sockoptipv6 ;
 int sockoptsctp ;
 int sockopttcp ;
 int sockoptudp ;
 int sockoptudplite ;

const char *
sysdecode_sockopt_name(int level, int optname)
{

 if (level == SOL_SOCKET)
  return (lookup_value(sockopt, optname));
 if (level == IPPROTO_IP)

  return (lookup_value(sockoptip, optname));
 if (level == IPPROTO_IPV6)
  return (lookup_value(sockoptipv6, optname));
 if (level == IPPROTO_SCTP)
  return (lookup_value(sockoptsctp, optname));
 if (level == IPPROTO_TCP)
  return (lookup_value(sockopttcp, optname));
 if (level == IPPROTO_UDP)
  return (lookup_value(sockoptudp, optname));
 if (level == IPPROTO_UDPLITE)
  return (lookup_value(sockoptudplite, optname));
 return (((void*)0));
}
