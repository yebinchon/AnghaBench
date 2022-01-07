
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct ip {int ip_p; int ip_len; } ;
typedef int socklen_t ;
struct TYPE_4__ {char* name; int aliasOverhead; int ifMTU; scalar_t__ logDropped; scalar_t__ dropIgnoredIncoming; scalar_t__ assignAliasAddr; int ifName; } ;


 int DONT_KNOW ;
 scalar_t__ EACCES ;
 int EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EMSGSIZE ;
 scalar_t__ INADDR_ANY ;
 int INPUT ;



 int IP_MAXPACKET ;
 int LOG_WARNING ;
 int LibAliasIn (int ,char*,int) ;
 int LibAliasOut (int ,char*,int) ;
 int OUTPUT ;
 int PKT_ALIAS_IGNORED ;
 int PrintPacket (struct ip*) ;
 int SendNeedFragIcmp (int ,struct ip*,int) ;
 int SetAliasAddressFromIfName (int ) ;
 int SyslogPacket (struct ip*,int ,char*) ;
 int Warn (char*) ;
 scalar_t__ background ;
 scalar_t__ dynamicMode ;
 scalar_t__ errno ;
 int exit (int) ;
 int icmpSock ;
 scalar_t__ logIpfwDenied ;
 TYPE_2__* mip ;
 int mla ;
 int ninstance ;
 int ntohs (int ) ;
 int printf (char*,...) ;
 int recvfrom (int,char*,int,int ,struct sockaddr*,int*) ;
 int sendto (int,char*,int,int ,struct sockaddr*,int) ;
 int sleep (int) ;
 int sprintf (char*,char*) ;
 scalar_t__ verbose ;

__attribute__((used)) static void DoAliasing (int fd, int direction)
{
 int bytes;
 int origBytes;
 char buf[IP_MAXPACKET];
 struct sockaddr_in addr;
 int wrote;
 int status;
 socklen_t addrSize;
 struct ip* ip;
 char msgBuf[80];
 int rval;

 if (mip->assignAliasAddr) {
  do {
   rval = SetAliasAddressFromIfName (mip->ifName);
   if (background == 0 || dynamicMode == 0)
    break;
   if (rval == EAGAIN)
    sleep(1);
  } while (rval == EAGAIN);
  if (rval != 0)
   exit(1);
  mip->assignAliasAddr = 0;
 }



 addrSize = sizeof addr;
 origBytes = recvfrom (fd,
         buf,
         sizeof buf,
         0,
         (struct sockaddr*) &addr,
         &addrSize);

 if (origBytes == -1) {

  if (errno != EINTR)
   Warn ("read from divert socket failed");

  return;
 }



 ip = (struct ip*) buf;
 if (direction == DONT_KNOW) {
  if (addr.sin_addr.s_addr == INADDR_ANY)
   direction = OUTPUT;
  else
   direction = INPUT;
 }

 if (verbose) {



  printf (direction == OUTPUT ? "Out " : "In  ");
  if (ninstance > 1)
   printf ("{%s}", mip->name);

  switch (ip->ip_p) {
  case 129:
   printf ("[TCP]  ");
   break;

  case 128:
   printf ("[UDP]  ");
   break;

  case 130:
   printf ("[ICMP] ");
   break;

  default:
   printf ("[%d]    ", ip->ip_p);
   break;
  }



  PrintPacket (ip);
 }

 if (direction == OUTPUT) {



  LibAliasOut (mla, buf, IP_MAXPACKET);
 }
 else {




  status = LibAliasIn (mla, buf, IP_MAXPACKET);
  if (status == PKT_ALIAS_IGNORED &&
      mip->dropIgnoredIncoming) {

   if (verbose)
    printf (" dropped.\n");

   if (mip->logDropped)
    SyslogPacket (ip, LOG_WARNING, "denied");

   return;
  }
 }



 bytes = ntohs (ip->ip_len);



 if (direction == OUTPUT &&
     bytes - origBytes > mip->aliasOverhead)
  mip->aliasOverhead = bytes - origBytes;

 if (verbose) {




  printf (" aliased to\n");
  printf ("           ");
  PrintPacket (ip);
  printf ("\n");
 }




 wrote = sendto (fd,
          buf,
       bytes,
       0,
       (struct sockaddr*) &addr,
       sizeof addr);

 if (wrote != bytes) {

  if (errno == EMSGSIZE) {

   if (direction == OUTPUT &&
       mip->ifMTU != -1)
    SendNeedFragIcmp (icmpSock,
        (struct ip*) buf,
        mip->ifMTU - mip->aliasOverhead);
  }
  else if (errno == EACCES && logIpfwDenied) {

   sprintf (msgBuf, "failed to write packet back");
   Warn (msgBuf);
  }
 }
}
