
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int zone16 ;
struct TYPE_15__ {struct TYPE_15__* s6_addr; } ;
struct sockaddr_in6 {TYPE_8__ sin6_addr; int sin6_scope_id; } ;
struct sockaddr_in {TYPE_8__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int isc_uint32_t ;
struct TYPE_13__ {int * s6_addr; } ;
typedef TYPE_2__ isc_uint16_t ;
struct TYPE_12__ {TYPE_2__ in6; TYPE_2__ in; } ;
struct TYPE_14__ {unsigned int family; TYPE_1__ type; } ;
typedef TYPE_3__ isc_netaddr_t ;




 int IN6_IS_ADDR_LINKLOCAL (TYPE_8__*) ;
 int INSIST (int ) ;
 int UNUSED (char*) ;
 unsigned int if_nametoindex (char*) ;
 int isc_netaddr_setzone (TYPE_3__*,int ) ;
 int memcpy (TYPE_2__*,TYPE_8__*,int) ;
 int memset (TYPE_3__*,int ,int) ;
 TYPE_2__ ntohs (TYPE_2__) ;

__attribute__((used)) static void
get_addr(unsigned int family, isc_netaddr_t *dst, struct sockaddr *src,
  char *ifname)
{
 struct sockaddr_in6 *sa6;



 UNUSED(ifname);



 memset(dst, 0, sizeof(*dst));

 dst->family = family;
 switch (family) {
 case 129:
  memcpy(&dst->type.in,
         &((struct sockaddr_in *)(void *)src)->sin_addr,
         sizeof(struct in_addr));
  break;
 case 128:
  sa6 = (struct sockaddr_in6 *)(void *)src;
  memcpy(&dst->type.in6, &sa6->sin6_addr,
         sizeof(struct in6_addr));
  break;
 default:
  INSIST(0);
  break;
 }
}
