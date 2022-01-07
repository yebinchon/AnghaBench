
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {unsigned int refs; int lock; } ;
typedef TYPE_1__ isc_refcount_t ;


 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int isc_mutex_init (int *) ;

isc_result_t
isc_refcount_init(isc_refcount_t *ref, unsigned int n) {
 REQUIRE(ref != ((void*)0));

 ref->refs = n;



 return (ISC_R_SUCCESS);

}
