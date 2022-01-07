
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_6__ {int used; } ;
typedef TYPE_1__ isc_buffer_t ;


 int ISC_BUFFER_VALID (TYPE_1__*) ;
 int REQUIRE (int) ;
 size_t isc_buffer_availablelength (TYPE_1__*) ;
 unsigned char* isc_buffer_used (TYPE_1__*) ;
 int memcpy (unsigned char*,char const*,size_t) ;
 size_t strlen (char const*) ;

void
isc__buffer_putstr(isc_buffer_t *b, const char *source) {
 size_t l;
 unsigned char *cp;

 REQUIRE(ISC_BUFFER_VALID(b));
 REQUIRE(source != ((void*)0));




 l = strlen(source);

 REQUIRE(l <= isc_buffer_availablelength(b));

 cp = isc_buffer_used(b);
 memcpy(cp, source, l);
 b->used += (u_int)l;
}
