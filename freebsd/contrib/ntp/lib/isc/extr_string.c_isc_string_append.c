
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;


 int ENSURE (int) ;
 int ISC_R_NOSPACE ;
 int ISC_R_SUCCESS ;
 int ISC_STRING_MAGIC ;
 int REQUIRE (int) ;
 int memset (char*,int ,size_t) ;
 size_t strlcat (char*,char const*,size_t) ;
 size_t strlen (char*) ;

isc_result_t
isc_string_append(char *target, size_t size, const char *source) {
 REQUIRE(size > 0U);
 REQUIRE(strlen(target) < size);

 if (strlcat(target, source, size) >= size) {
  memset(target, ISC_STRING_MAGIC, size);
  return (ISC_R_NOSPACE);
 }

 ENSURE(strlen(target) < size);

 return (ISC_R_SUCCESS);
}
