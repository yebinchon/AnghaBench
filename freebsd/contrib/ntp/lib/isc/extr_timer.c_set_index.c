
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int index; } ;
typedef TYPE_1__ isc__timer_t ;


 int REQUIRE (int ) ;
 int VALID_TIMER (TYPE_1__*) ;

__attribute__((used)) static void
set_index(void *what, unsigned int index) {
 isc__timer_t *timer;

 timer = what;
 REQUIRE(VALID_TIMER(timer));

 timer->index = index;
}
