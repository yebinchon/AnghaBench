
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ isc_result_t ;


 scalar_t__ ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int close (int) ;
 int errno ;
 scalar_t__ isc__errno2result (int ) ;
 int isc_file_safemovefile (char const*,char*) ;
 int mkstemp (char*) ;
 int unlink (char*) ;

isc_result_t
isc_file_renameunique(const char *file, char *templet) {
 int fd = -1;
 int res = 0;
 isc_result_t result = ISC_R_SUCCESS;

 REQUIRE(file != ((void*)0));
 REQUIRE(templet != ((void*)0));

 fd = mkstemp(templet);
 if (fd == -1)
  result = isc__errno2result(errno);
 else
  close(fd);

 if (result == ISC_R_SUCCESS) {
  res = isc_file_safemovefile(file, templet);
  if (res != 0) {
   result = isc__errno2result(errno);
   (void)unlink(templet);
  }
 }
 return (result);
}
