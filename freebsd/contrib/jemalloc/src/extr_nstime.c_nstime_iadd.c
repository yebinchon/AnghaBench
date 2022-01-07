
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ ns; } ;
typedef TYPE_1__ nstime_t ;


 scalar_t__ UINT64_MAX ;
 int assert (int) ;

void
nstime_iadd(nstime_t *time, uint64_t addend) {
 assert(UINT64_MAX - time->ns >= addend);

 time->ns += addend;
}
