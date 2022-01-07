
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int s_addr; } ;
struct TYPE_7__ {int un; int in6; TYPE_1__ in; } ;
struct TYPE_8__ {int family; scalar_t__ zone; TYPE_2__ type; } ;
typedef TYPE_3__ isc_netaddr_t ;
typedef int isc_boolean_t ;





 int ISC_FALSE ;
 int ISC_TRUE ;
 int REQUIRE (int) ;
 int memcmp (int *,int *,int) ;
 int strcmp (int ,int ) ;

isc_boolean_t
isc_netaddr_equal(const isc_netaddr_t *a, const isc_netaddr_t *b) {
 REQUIRE(a != ((void*)0) && b != ((void*)0));

 if (a->family != b->family)
  return (ISC_FALSE);

 if (a->zone != b->zone)
  return (ISC_FALSE);

 switch (a->family) {
 case 130:
  if (a->type.in.s_addr != b->type.in.s_addr)
   return (ISC_FALSE);
  break;
 case 129:
  if (memcmp(&a->type.in6, &b->type.in6,
      sizeof(a->type.in6)) != 0 ||
      a->zone != b->zone)
   return (ISC_FALSE);
  break;






 default:
  return (ISC_FALSE);
 }
 return (ISC_TRUE);
}
