
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {int valid; int * proc; int entry; } ;
typedef TYPE_1__ isc_interfaceiter_t ;


 int ISC_R_NOMORE ;
 int ISC_R_SUCCESS ;
 int * fgets (int ,int,int *) ;

__attribute__((used)) static isc_result_t
linux_if_inet6_next(isc_interfaceiter_t *iter) {
 if (iter->proc != ((void*)0) &&
     fgets(iter->entry, sizeof(iter->entry), iter->proc) != ((void*)0))
  iter->valid = ISC_R_SUCCESS;
 else
  iter->valid = ISC_R_NOMORE;
 return (iter->valid);
}
