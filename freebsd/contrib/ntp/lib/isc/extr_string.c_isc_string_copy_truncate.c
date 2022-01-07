
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENSURE (int) ;
 int REQUIRE (int) ;
 int strlcpy (char*,char const*,size_t) ;
 size_t strlen (char*) ;

void
isc_string_copy_truncate(char *target, size_t size, const char *source) {
 REQUIRE(size > 0U);

 strlcpy(target, source, size);

 ENSURE(strlen(target) < size);
}
