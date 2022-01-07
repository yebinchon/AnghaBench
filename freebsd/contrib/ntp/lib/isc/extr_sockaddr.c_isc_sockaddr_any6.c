
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int sin6_len; scalar_t__ sin6_port; int sin6_addr; int sin6_family; } ;
struct TYPE_7__ {TYPE_2__ sin6; } ;
struct TYPE_9__ {int length; TYPE_1__ type; } ;
typedef TYPE_3__ isc_sockaddr_t ;


 int AF_INET6 ;
 int ISC_LINK_INIT (TYPE_3__*,int ) ;
 int in6addr_any ;
 int link ;
 int memset (TYPE_3__*,int ,int) ;

void
isc_sockaddr_any6(isc_sockaddr_t *sockaddr)
{
 memset(sockaddr, 0, sizeof(*sockaddr));
 sockaddr->type.sin6.sin6_family = AF_INET6;



 sockaddr->type.sin6.sin6_addr = in6addr_any;
 sockaddr->type.sin6.sin6_port = 0;
 sockaddr->length = sizeof(sockaddr->type.sin6);
 ISC_LINK_INIT(sockaddr, link);
}
