
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ a; scalar_t__ n; scalar_t__ p; } ;
typedef TYPE_1__ min_heap_t ;



void min_heap_ctor_(min_heap_t* s) { s->p = 0; s->n = 0; s->a = 0; }
