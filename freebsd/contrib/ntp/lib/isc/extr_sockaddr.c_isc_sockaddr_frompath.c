
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char const isc_sockaddr_t ;
typedef int isc_result_t ;
struct TYPE_4__ {unsigned char sun_len; int sun_path; int sun_family; } ;
struct TYPE_3__ {TYPE_2__ sunix; } ;


 int AF_UNIX ;
 int ISC_R_NOSPACE ;
 int ISC_R_NOTIMPLEMENTED ;
 int ISC_R_SUCCESS ;
 int UNUSED (char const*) ;
 int memset (char const*,int ,int) ;
 int strcpy (int ,char const*) ;
 int strlen (char const*) ;

isc_result_t
isc_sockaddr_frompath(isc_sockaddr_t *sockaddr, const char *path) {
 UNUSED(sockaddr);
 UNUSED(path);
 return (ISC_R_NOTIMPLEMENTED);

}
