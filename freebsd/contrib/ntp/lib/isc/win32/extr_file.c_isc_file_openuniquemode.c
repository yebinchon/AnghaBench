
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ isc_result_t ;
typedef int FILE ;


 scalar_t__ ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 int UNUSED (int) ;
 int close (int) ;
 int errno ;
 int fchmod (int,int) ;
 int * fdopen (int,char*) ;
 scalar_t__ isc__errno2result (int ) ;
 int mkstemp (char*) ;
 int remove (char*) ;

isc_result_t
isc_file_openuniquemode(char *templet, int mode, FILE **fp) {
 int fd;
 FILE *f;
 isc_result_t result = ISC_R_SUCCESS;

 REQUIRE(templet != ((void*)0));
 REQUIRE(fp != ((void*)0) && *fp == ((void*)0));




 fd = mkstemp(templet);

 if (fd == -1)
  result = isc__errno2result(errno);
 if (result == ISC_R_SUCCESS) {

  UNUSED(mode);



  f = fdopen(fd, "w+");
  if (f == ((void*)0)) {
   result = isc__errno2result(errno);
   (void)remove(templet);
   (void)close(fd);
  } else
   *fp = f;
 }

 return (result);
}
