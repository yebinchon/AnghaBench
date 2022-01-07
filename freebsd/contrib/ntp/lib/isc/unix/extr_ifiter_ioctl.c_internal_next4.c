
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_6__ {int sa_len; } ;
struct ifreq {TYPE_1__ ifr_addr; } ;
typedef int isc_result_t ;
struct TYPE_7__ {scalar_t__ ifc_len; scalar_t__ ifc_req; } ;
struct TYPE_8__ {unsigned int pos; TYPE_2__ ifc; } ;
typedef TYPE_3__ isc_interfaceiter_t ;


 int INSIST (int) ;
 int ISC_R_NOMORE ;
 int ISC_R_SUCCESS ;
 int linux_if_inet6_next (TYPE_3__*) ;

__attribute__((used)) static isc_result_t
internal_next4(isc_interfaceiter_t *iter) {




 if (iter->pos < (unsigned int) iter->ifc.ifc_len) {
   iter->pos += sizeof(struct ifreq);

 } else {
  INSIST(iter->pos == (unsigned int) iter->ifc.ifc_len);

  return (linux_if_inet6_next(iter));



 }
 return (ISC_R_SUCCESS);
}
