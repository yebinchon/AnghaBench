
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_addr; int sin6_family; int sin_addr; int sin_family; } ;
struct sockaddr_in {int sin6_addr; int sin6_family; int sin_addr; int sin_family; } ;
struct packed_rrset_data {int* rr_len; scalar_t__* rr_data; } ;
typedef int socklen_t ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 int memcpy (int *,scalar_t__,int) ;
 int memset (struct sockaddr_in6*,int ,int) ;

__attribute__((used)) static int
rdata2sockaddr(const struct packed_rrset_data* rd, uint16_t rtype, size_t i,
 struct sockaddr_storage* ss, socklen_t* addrlenp)
{


 if(rtype == LDNS_RR_TYPE_A && rd->rr_len[i] == 6) {
  struct sockaddr_in* sa4 = (struct sockaddr_in*)ss;

  memset(sa4, 0, sizeof(*sa4));
  sa4->sin_family = AF_INET;
  memcpy(&sa4->sin_addr, rd->rr_data[i] + 2,
   sizeof(sa4->sin_addr));
  *addrlenp = sizeof(*sa4);
  return 1;
 } else if(rtype == LDNS_RR_TYPE_AAAA && rd->rr_len[i] == 18) {
  struct sockaddr_in6* sa6 = (struct sockaddr_in6*)ss;

  memset(sa6, 0, sizeof(*sa6));
  sa6->sin6_family = AF_INET6;
  memcpy(&sa6->sin6_addr, rd->rr_data[i] + 2,
   sizeof(sa6->sin6_addr));
  *addrlenp = sizeof(*sa6);
  return 1;
 }
 return 0;
}
