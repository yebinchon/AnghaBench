
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_port; void* sin6_scope_id; int sin6_addr; void* sin6_flowinfo; int sin6_family; } ;
struct sockaddr_in {int sin_port; int sin_zero; int sin_addr; int sin_family; } ;
struct rpcap_sockaddr_in6 {int scope_id; int addr; int flowinfo; int port; } ;
struct rpcap_sockaddr_in {int addr; int port; } ;
struct rpcap_sockaddr {int family; } ;


 int AF_INET ;
 int AF_INET6 ;
 int PCAP_ERRBUF_SIZE ;



 int errno ;
 scalar_t__ malloc (int) ;
 int memcpy (int *,int *,int) ;
 int memset (int ,int ,int) ;
 void* ntohl (int ) ;
 int ntohs (int ) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int ,char*) ;

__attribute__((used)) static int
rpcap_deseraddr(struct rpcap_sockaddr *sockaddrin, struct sockaddr_storage **sockaddrout, char *errbuf)
{

 switch (ntohs(sockaddrin->family))
 {
 case 130:
 case 132:
 case 131:
  {
  struct rpcap_sockaddr_in *sockaddrin_ipv4;
  struct sockaddr_in *sockaddrout_ipv4;

  (*sockaddrout) = (struct sockaddr_storage *) malloc(sizeof(struct sockaddr_in));
  if ((*sockaddrout) == ((void*)0))
  {
   pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
       errno, "malloc() failed");
   return -1;
  }
  sockaddrin_ipv4 = (struct rpcap_sockaddr_in *) sockaddrin;
  sockaddrout_ipv4 = (struct sockaddr_in *) (*sockaddrout);
  sockaddrout_ipv4->sin_family = AF_INET;
  sockaddrout_ipv4->sin_port = ntohs(sockaddrin_ipv4->port);
  memcpy(&sockaddrout_ipv4->sin_addr, &sockaddrin_ipv4->addr, sizeof(sockaddrout_ipv4->sin_addr));
  memset(sockaddrout_ipv4->sin_zero, 0, sizeof(sockaddrout_ipv4->sin_zero));
  break;
  }
 default:




  *sockaddrout = ((void*)0);
  break;
 }
 return 0;
}
