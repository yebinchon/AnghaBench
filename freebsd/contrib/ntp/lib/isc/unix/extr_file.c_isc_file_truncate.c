
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef int isc_offset_t ;


 int ISC_R_SUCCESS ;
 int errno ;
 int isc__errno2result (int ) ;
 scalar_t__ truncate (char const*,int ) ;

isc_result_t
isc_file_truncate(const char *filename, isc_offset_t size) {
 isc_result_t result = ISC_R_SUCCESS;

 if (truncate(filename, size) < 0)
  result = isc__errno2result(errno);
 return (result);
}
