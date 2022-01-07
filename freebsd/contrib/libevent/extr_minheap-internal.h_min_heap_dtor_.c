
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ p; } ;
typedef TYPE_1__ min_heap_t ;


 int mm_free (scalar_t__) ;

void min_heap_dtor_(min_heap_t* s) { if (s->p) mm_free(s->p); }
