
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ns; } ;
typedef TYPE_1__ nstime_t ;


 scalar_t__ UINT64_MAX ;
 int assert (int) ;

void
nstime_add(nstime_t *time, const nstime_t *addend) {
 assert(UINT64_MAX - time->ns >= addend->ns);

 time->ns += addend->ns;
}
