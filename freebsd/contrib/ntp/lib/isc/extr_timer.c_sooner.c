
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_boolean_t ;
struct TYPE_3__ {int due; } ;
typedef TYPE_1__ isc__timer_t ;


 int ISC_FALSE ;
 int ISC_TRUE ;
 int REQUIRE (int ) ;
 int VALID_TIMER (TYPE_1__*) ;
 scalar_t__ isc_time_compare (int *,int *) ;

__attribute__((used)) static isc_boolean_t
sooner(void *v1, void *v2) {
 isc__timer_t *t1, *t2;

 t1 = v1;
 t2 = v2;
 REQUIRE(VALID_TIMER(t1));
 REQUIRE(VALID_TIMER(t2));

 if (isc_time_compare(&t1->due, &t2->due) < 0)
  return (ISC_TRUE);
 return (ISC_FALSE);
}
