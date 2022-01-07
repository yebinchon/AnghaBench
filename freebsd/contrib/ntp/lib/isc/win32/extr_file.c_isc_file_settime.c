
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int absolute; } ;
typedef TYPE_1__ isc_time_t ;
typedef int isc_result_t ;
typedef int HANDLE ;


 int EINVAL ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 int SetFileTime (int ,int *,int *,int *) ;
 int _O_BINARY ;
 int _O_RDWR ;
 scalar_t__ _get_osfhandle (int) ;
 int close (int) ;
 int errno ;
 int isc__errno2result (int ) ;
 int open (char const*,int) ;

isc_result_t
isc_file_settime(const char *file, isc_time_t *time) {
 int fh;

 REQUIRE(file != ((void*)0) && time != ((void*)0));

 if ((fh = open(file, _O_RDWR | _O_BINARY)) < 0)
  return (isc__errno2result(errno));






 if (!SetFileTime((HANDLE) _get_osfhandle(fh),
    ((void*)0),
    &time->absolute,
    &time->absolute))
 {
  close(fh);
  errno = EINVAL;
  return (isc__errno2result(errno));
 }

 close(fh);
 return (ISC_R_SUCCESS);

}
