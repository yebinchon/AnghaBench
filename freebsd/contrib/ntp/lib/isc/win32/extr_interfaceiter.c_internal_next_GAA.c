
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_7__ {TYPE_1__* ipaaCur; TYPE_2__* ipuaCur; } ;
typedef TYPE_3__ isc_interfaceiter_t ;
struct TYPE_6__ {struct TYPE_6__* Next; } ;
struct TYPE_5__ {TYPE_2__* FirstUnicastAddress; struct TYPE_5__* Next; } ;


 int ISC_R_NOMORE ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int use_GAA ;

__attribute__((used)) static isc_result_t
internal_next_GAA(isc_interfaceiter_t *iter) {
 REQUIRE(use_GAA);
 if (((void*)0) == iter->ipaaCur)
  return (ISC_R_NOMORE);
 if (((void*)0) == iter->ipuaCur)
  iter->ipuaCur = iter->ipaaCur->FirstUnicastAddress;
 else
  iter->ipuaCur = iter->ipuaCur->Next;
 while (((void*)0) == iter->ipuaCur) {
  iter->ipaaCur = iter->ipaaCur->Next;
  if (((void*)0) == iter->ipaaCur)
   return (ISC_R_NOMORE);
  iter->ipuaCur = iter->ipaaCur->FirstUnicastAddress;
 }
 return (ISC_R_SUCCESS);
}
