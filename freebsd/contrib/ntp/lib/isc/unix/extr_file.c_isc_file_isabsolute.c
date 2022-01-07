
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_boolean_t ;


 int ISC_TF (int) ;
 int REQUIRE (int ) ;

isc_boolean_t
isc_file_isabsolute(const char *filename) {
 REQUIRE(filename != ((void*)0));
 return (ISC_TF(filename[0] == '/'));
}
