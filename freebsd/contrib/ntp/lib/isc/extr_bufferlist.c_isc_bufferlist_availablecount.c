
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_bufferlist_t ;
typedef int isc_buffer_t ;


 int ISC_BUFFER_VALID (int *) ;
 int * ISC_LIST_HEAD (int ) ;
 int * ISC_LIST_NEXT (int *,int ) ;
 int REQUIRE (int ) ;
 scalar_t__ isc_buffer_availablelength (int *) ;
 int link ;

unsigned int
isc_bufferlist_availablecount(isc_bufferlist_t *bl) {
 isc_buffer_t *buffer;
 unsigned int length;

 REQUIRE(bl != ((void*)0));

 length = 0;
 buffer = ISC_LIST_HEAD(*bl);
 while (buffer != ((void*)0)) {
  REQUIRE(ISC_BUFFER_VALID(buffer));
  length += isc_buffer_availablelength(buffer);
  buffer = ISC_LIST_NEXT(buffer, link);
 }

 return (length);
}
