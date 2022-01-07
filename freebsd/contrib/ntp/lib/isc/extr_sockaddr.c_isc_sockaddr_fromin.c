
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct in_addr {int dummy; } ;
struct TYPE_8__ {int sin_len; int sin_port; struct in_addr sin_addr; int sin_family; } ;
struct TYPE_7__ {TYPE_2__ sin; } ;
struct TYPE_9__ {int length; TYPE_1__ type; } ;
typedef TYPE_3__ isc_sockaddr_t ;
typedef int in_port_t ;


 int AF_INET ;
 int ISC_LINK_INIT (TYPE_3__*,int ) ;
 int htons (int ) ;
 int link ;
 int memset (TYPE_3__*,int ,int) ;

void
isc_sockaddr_fromin(isc_sockaddr_t *sockaddr, const struct in_addr *ina,
      in_port_t port)
{
 memset(sockaddr, 0, sizeof(*sockaddr));
 sockaddr->type.sin.sin_family = AF_INET;



 sockaddr->type.sin.sin_addr = *ina;
 sockaddr->type.sin.sin_port = htons(port);
 sockaddr->length = sizeof(sockaddr->type.sin);
 ISC_LINK_INIT(sockaddr, link);
}
