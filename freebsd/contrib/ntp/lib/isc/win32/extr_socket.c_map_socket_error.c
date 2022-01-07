
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int connected; } ;
typedef TYPE_1__ isc_socket_t ;


 int DOIO_HARD ;
 int DOIO_SOFT ;







 int ISC_R_ADDRNOTAVAIL ;
 int ISC_R_BADADDRESSFORM ;
 int ISC_R_CONNECTIONRESET ;
 int ISC_R_CONNREFUSED ;
 int ISC_R_FAMILYNOSUPPORT ;
 int ISC_R_HOSTDOWN ;
 int ISC_R_HOSTUNREACH ;
 int ISC_R_IOERROR ;
 int ISC_R_NETDOWN ;
 int ISC_R_NETUNREACH ;
 int ISC_R_NOPERM ;
 int ISC_R_NORESOURCES ;
 int ISC_R_NOTCONNECTED ;
 int isc__strerror (int,char*,size_t) ;

int
map_socket_error(isc_socket_t *sock, int windows_errno, int *isc_errno,
   char *errorstring, size_t bufsize) {

 int doreturn;
 switch (windows_errno) {
 case 138:
  *isc_errno = ISC_R_CONNREFUSED;
  if (sock->connected)
   doreturn = DOIO_HARD;
  else
   doreturn = DOIO_SOFT;
  break;
 case 130:
 case 146:
  *isc_errno = ISC_R_NETUNREACH;
  if (sock->connected)
   doreturn = DOIO_HARD;
  else
   doreturn = DOIO_SOFT;
  break;
 case 144:
 case 148:
 case 133:
  *isc_errno = ISC_R_HOSTUNREACH;
  if (sock->connected)
   doreturn = DOIO_HARD;
  else
   doreturn = DOIO_SOFT;
  break;
 case 132:
  *isc_errno = ISC_R_NETDOWN;
  if (sock->connected)
   doreturn = DOIO_HARD;
  else
   doreturn = DOIO_SOFT;
  break;
 case 134:
  *isc_errno = ISC_R_HOSTDOWN;
  if (sock->connected)
   doreturn = DOIO_HARD;
  else
   doreturn = DOIO_SOFT;
  break;
 case 142:
  *isc_errno = ISC_R_NOPERM;
  if (sock->connected)
   doreturn = DOIO_HARD;
  else
   doreturn = DOIO_SOFT;
  break;
 case 137:
 case 131:
 case 139:
 case 135:
  *isc_errno = ISC_R_CONNECTIONRESET;
  if (sock->connected)
   doreturn = DOIO_HARD;
  else
   doreturn = DOIO_SOFT;
  break;
 case 128:
  *isc_errno = ISC_R_NOTCONNECTED;
  if (sock->connected)
   doreturn = DOIO_HARD;
  else
   doreturn = DOIO_SOFT;
  break;
 case 145:
 case 149:
 case 143:
  *isc_errno = ISC_R_CONNECTIONRESET;
  doreturn = DOIO_HARD;
  break;
 case 129:
  *isc_errno = ISC_R_NORESOURCES;
  doreturn = DOIO_HARD;
  break;
 case 140:
  *isc_errno = ISC_R_FAMILYNOSUPPORT;
  doreturn = DOIO_HARD;
  break;
 case 141:
  *isc_errno = ISC_R_ADDRNOTAVAIL;
  doreturn = DOIO_HARD;
  break;
 case 136:
  *isc_errno = ISC_R_BADADDRESSFORM;
  doreturn = DOIO_HARD;
  break;
 case 147:
  *isc_errno = ISC_R_NETDOWN;
  doreturn = DOIO_HARD;
  break;
 default:
  *isc_errno = ISC_R_IOERROR;
  doreturn = DOIO_HARD;
  break;
 }
 if (doreturn == DOIO_HARD) {
  isc__strerror(windows_errno, errorstring, bufsize);
 }
 return (doreturn);
}
