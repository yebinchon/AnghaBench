
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef void* n_long ;
struct TYPE_6__ {scalar_t__ s_addr; } ;


 int EIO ;
 void* INADDR_NONE ;
 int MAXHOSTNAMELEN ;
 int bootp (int) ;
 scalar_t__ bp_getfile (int,char*,TYPE_1__*,char*) ;
 scalar_t__ bp_whoami (int) ;
 scalar_t__ debug ;
 TYPE_1__ gateip ;
 char* hostname ;
 char* inet_ntoa (TYPE_1__) ;
 char* intoa (void*) ;
 void* ip_convertaddr (char*) ;
 TYPE_1__ myip ;
 void* net_parse_rootpath () ;
 void* netmask ;
 int printf (char*,...) ;
 scalar_t__ rarp_getipaddress (int) ;
 TYPE_1__ rootip ;
 char* rootpath ;
 scalar_t__ try_bootp ;

__attribute__((used)) static int
net_getparams(int sock)
{
 char buf[MAXHOSTNAMELEN];
 n_long rootaddr, smask;
 if (rarp_getipaddress(sock)) {
  printf("net_open: RARP failed\n");
  return (EIO);
 }
 printf("net_open: client addr: %s\n", inet_ntoa(myip));


 if (bp_whoami(sock)) {
  printf("net_open: bootparam/whoami RPC failed\n");
  return (EIO);
 }
 smask = 0;
 gateip.s_addr = 0;
 if (bp_getfile(sock, "gateway", &gateip, buf) == 0) {

  smask = ip_convertaddr(buf);
 }
 if (smask) {
  netmask = smask;




 }






 if (bp_getfile(sock, "root", &rootip, rootpath)) {
  printf("net_open: bootparam/getfile RPC failed\n");
  return (EIO);
 }
exit:
 if ((rootaddr = net_parse_rootpath()) != INADDR_NONE)
  rootip.s_addr = rootaddr;
 return (0);
}
