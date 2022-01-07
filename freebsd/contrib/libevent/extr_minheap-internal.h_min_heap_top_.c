
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct event {int dummy; } ;
struct TYPE_3__ {struct event** p; scalar_t__ n; } ;
typedef TYPE_1__ min_heap_t ;



struct event* min_heap_top_(min_heap_t* s) { return s->n ? *s->p : 0; }
