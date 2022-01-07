
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int * sun_path; } ;
struct TYPE_13__ {int sin6_scope_id; int sin6_addr; } ;
struct TYPE_12__ {int sin_addr; } ;
struct TYPE_11__ {int sa_family; } ;
struct TYPE_16__ {TYPE_5__ sunix; TYPE_3__ sin6; TYPE_2__ sin; TYPE_1__ sa; } ;
struct TYPE_17__ {TYPE_6__ type; } ;
typedef TYPE_7__ isc_sockaddr_t ;
struct TYPE_14__ {int * un; int in6; int in; } ;
struct TYPE_18__ {int family; int zone; TYPE_4__ type; } ;
typedef TYPE_8__ isc_netaddr_t ;





 int INSIST (int ) ;
 int memcpy (int *,int *,int) ;

void
isc_netaddr_fromsockaddr(isc_netaddr_t *t, const isc_sockaddr_t *s) {
 int family = s->type.sa.sa_family;
 t->family = family;
 switch (family) {
 case 130:
  t->type.in = s->type.sin.sin_addr;
  t->zone = 0;
  break;
 case 129:
  memcpy(&t->type.in6, &s->type.sin6.sin6_addr, 16);



  t->zone = 0;

  break;






 default:
  INSIST(0);
 }
}
