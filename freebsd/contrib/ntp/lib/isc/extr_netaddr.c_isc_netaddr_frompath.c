
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int isc_result_t ;
typedef char const isc_netaddr_t ;
struct TYPE_2__ {int un; } ;


 int AF_UNIX ;
 int ISC_R_NOSPACE ;
 int ISC_R_NOTIMPLEMENTED ;
 int ISC_R_SUCCESS ;
 int UNUSED (char const*) ;
 int memset (char const*,int ,int) ;
 int strlcpy (int ,char const*,int) ;
 int strlen (char const*) ;

isc_result_t
isc_netaddr_frompath(isc_netaddr_t *netaddr, const char *path) {
 UNUSED(netaddr);
 UNUSED(path);
 return (ISC_R_NOTIMPLEMENTED);

}
