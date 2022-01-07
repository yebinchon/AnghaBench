
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct TYPE_8__ {int sin6_len; int sin6_port; struct in6_addr sin6_addr; int sin6_family; } ;
struct TYPE_7__ {TYPE_2__ sin6; } ;
struct TYPE_9__ {int length; TYPE_1__ type; } ;
typedef TYPE_3__ isc_sockaddr_t ;
typedef int in_port_t ;


 int AF_INET6 ;
 int ISC_LINK_INIT (TYPE_3__*,int ) ;
 int htons (int ) ;
 int link ;
 int memset (TYPE_3__*,int ,int) ;

void
isc_sockaddr_fromin6(isc_sockaddr_t *sockaddr, const struct in6_addr *ina6,
       in_port_t port)
{
 memset(sockaddr, 0, sizeof(*sockaddr));
 sockaddr->type.sin6.sin6_family = AF_INET6;



 sockaddr->type.sin6.sin6_addr = *ina6;
 sockaddr->type.sin6.sin6_port = htons(port);
 sockaddr->length = sizeof(sockaddr->type.sin6);
 ISC_LINK_INIT(sockaddr, link);
}
