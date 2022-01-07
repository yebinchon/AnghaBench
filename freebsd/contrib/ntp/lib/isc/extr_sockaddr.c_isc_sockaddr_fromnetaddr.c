
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int sin6_len; void* sin6_port; int sin6_scope_id; int sin6_addr; } ;
struct TYPE_12__ {short sin_family; int sin_len; void* sin_port; int sin_addr; } ;
struct TYPE_15__ {TYPE_3__ sin6; TYPE_1__ sin; } ;
struct TYPE_16__ {int length; TYPE_4__ type; } ;
typedef TYPE_5__ isc_sockaddr_t ;
struct TYPE_13__ {int in6; int in; } ;
struct TYPE_17__ {int family; TYPE_2__ type; } ;
typedef TYPE_6__ isc_netaddr_t ;
typedef int in_port_t ;




 int INSIST (int ) ;
 int ISC_LINK_INIT (TYPE_5__*,int ) ;
 void* htons (int ) ;
 int isc_netaddr_getzone (TYPE_6__ const*) ;
 int link ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_5__*,int ,int) ;

void
isc_sockaddr_fromnetaddr(isc_sockaddr_t *sockaddr, const isc_netaddr_t *na,
      in_port_t port)
{
 memset(sockaddr, 0, sizeof(*sockaddr));
 sockaddr->type.sin.sin_family = (short)na->family;
 switch (na->family) {
 case 129:
  sockaddr->length = sizeof(sockaddr->type.sin);



  sockaddr->type.sin.sin_addr = na->type.in;
  sockaddr->type.sin.sin_port = htons(port);
  break;
 case 128:
  sockaddr->length = sizeof(sockaddr->type.sin6);



  memcpy(&sockaddr->type.sin6.sin6_addr, &na->type.in6, 16);



  sockaddr->type.sin6.sin6_port = htons(port);
  break;
 default:
  INSIST(0);
 }
 ISC_LINK_INIT(sockaddr, link);
}
