
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ifa_msghdr {scalar_t__ ifam_msglen; } ;
typedef int isc_result_t ;
struct TYPE_3__ {unsigned int pos; int bufused; scalar_t__ buf; } ;
typedef TYPE_1__ isc_interfaceiter_t ;


 int ISC_R_NOMORE ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int) ;

__attribute__((used)) static isc_result_t
internal_next(isc_interfaceiter_t *iter) {
 struct ifa_msghdr *ifam;
 REQUIRE (iter->pos < (unsigned int) iter->bufused);

 ifam = (struct ifa_msghdr *) ((char *) iter->buf + iter->pos);

 iter->pos += ifam->ifam_msglen;

 if (iter->pos >= iter->bufused)
  return (ISC_R_NOMORE);

 return (ISC_R_SUCCESS);
}
