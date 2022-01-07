
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ active; scalar_t__ current; unsigned int used; int base; } ;
typedef TYPE_1__ isc_buffer_t ;


 int ISC_BUFFER_VALID (TYPE_1__*) ;
 int REQUIRE (int ) ;
 void* isc_buffer_current (TYPE_1__*) ;
 unsigned int isc_buffer_remaininglength (TYPE_1__*) ;
 int memmove (int ,void*,size_t) ;

void
isc_buffer_compact(isc_buffer_t *b) {
 unsigned int length;
 void *src;







 REQUIRE(ISC_BUFFER_VALID(b));

 src = isc_buffer_current(b);
 length = isc_buffer_remaininglength(b);
 (void)memmove(b->base, src, (size_t)length);

 if (b->active > b->current)
  b->active -= b->current;
 else
  b->active = 0;
 b->current = 0;
 b->used = length;
}
