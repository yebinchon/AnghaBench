
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
 int GetFileTime (int ,int *,int *,int *) ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int _O_BINARY ;
 int _O_RDONLY ;
 scalar_t__ _get_osfhandle (int) ;
 int close (int) ;
 int errno ;
 int isc__errno2result (int ) ;
 int open (char const*,int) ;

isc_result_t
isc_file_getmodtime(const char *file, isc_time_t *time) {
 int fh;

 REQUIRE(file != ((void*)0));
 REQUIRE(time != ((void*)0));

 if ((fh = open(file, _O_RDONLY | _O_BINARY)) < 0)
  return (isc__errno2result(errno));

 if (!GetFileTime((HANDLE) _get_osfhandle(fh),
    ((void*)0),
    ((void*)0),
    &time->absolute))
 {
  close(fh);
  errno = EINVAL;
  return (isc__errno2result(errno));
 }
 close(fh);
 return (ISC_R_SUCCESS);
}
