
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_sockaddr_t ;




 int INSIST (int ) ;
 int isc_sockaddr_any (int *) ;
 int isc_sockaddr_any6 (int *) ;

void
isc_sockaddr_anyofpf(isc_sockaddr_t *sockaddr, int pf) {
     switch (pf) {
     case 129:
      isc_sockaddr_any(sockaddr);
      break;
     case 128:
      isc_sockaddr_any6(sockaddr);
      break;
     default:
      INSIST(0);
     }
}
