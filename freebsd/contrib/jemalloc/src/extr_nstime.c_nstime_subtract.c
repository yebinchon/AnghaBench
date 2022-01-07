
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ns; } ;
typedef TYPE_1__ nstime_t ;


 int assert (int) ;
 scalar_t__ nstime_compare (TYPE_1__*,TYPE_1__ const*) ;

void
nstime_subtract(nstime_t *time, const nstime_t *subtrahend) {
 assert(nstime_compare(time, subtrahend) >= 0);

 time->ns -= subtrahend->ns;
}
