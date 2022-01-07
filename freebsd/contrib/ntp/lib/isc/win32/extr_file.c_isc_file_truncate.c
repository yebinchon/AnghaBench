
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef int isc_offset_t ;


 int ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 int _O_BINARY ;
 int _O_RDWR ;
 scalar_t__ _chsize (int,int ) ;
 int close (int) ;
 int errno ;
 int isc__errno2result (int ) ;
 int open (char const*,int) ;

isc_result_t
isc_file_truncate(const char *filename, isc_offset_t size) {
 int fh;

 REQUIRE(filename != ((void*)0) && size >= 0);

 if ((fh = open(filename, _O_RDWR | _O_BINARY)) < 0)
  return (isc__errno2result(errno));

 if(_chsize(fh, size) != 0) {
  close(fh);
  return (isc__errno2result(errno));
 }
 close(fh);

 return (ISC_R_SUCCESS);
}
