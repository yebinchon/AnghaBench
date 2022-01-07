
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int length; void* base; } ;
typedef TYPE_1__ isc_buffer_t ;


 int REQUIRE (int) ;
 int memmove (void*,void*,unsigned int) ;

void
isc_buffer_reinit(isc_buffer_t *b, void *base, unsigned int length) {
 REQUIRE(b->length <= length);
 REQUIRE(base != ((void*)0));

 (void)memmove(base, b->base, b->length);
 b->base = base;
 b->length = length;
}
