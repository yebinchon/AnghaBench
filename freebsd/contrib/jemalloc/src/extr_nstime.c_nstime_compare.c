
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ns; } ;
typedef TYPE_1__ nstime_t ;



int
nstime_compare(const nstime_t *a, const nstime_t *b) {
 return (a->ns > b->ns) - (a->ns < b->ns);
}
