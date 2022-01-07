
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_buffer_t ;


 int ISC__BUFFER_INIT (int *,void const*,unsigned int) ;
 int REQUIRE (int ) ;

void
isc__buffer_init(isc_buffer_t *b, const void *base, unsigned int length) {





 REQUIRE(b != ((void*)0));

 ISC__BUFFER_INIT(b, base, length);
}
