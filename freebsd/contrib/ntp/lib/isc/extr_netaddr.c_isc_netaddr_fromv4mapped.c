
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int in6; int in; } ;
struct TYPE_9__ {scalar_t__ family; TYPE_1__ type; } ;
typedef TYPE_2__ isc_netaddr_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int DE_CONST (TYPE_2__ const*,TYPE_2__*) ;
 int IN6_IS_ADDR_V4MAPPED (int *) ;
 int REQUIRE (int) ;
 int memcpy (int *,char*,int) ;
 int memset (TYPE_2__*,int ,int) ;

void
isc_netaddr_fromv4mapped(isc_netaddr_t *t, const isc_netaddr_t *s) {
 isc_netaddr_t *src;

 DE_CONST(s, src);

 REQUIRE(s->family == AF_INET6);
 REQUIRE(IN6_IS_ADDR_V4MAPPED(&src->type.in6));

 memset(t, 0, sizeof(*t));
 t->family = AF_INET;
 memcpy(&t->type.in, (char *)&src->type.in6 + 12, 4);
 return;
}
