
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct in_addr {void* s_addr; } ;
struct alias_link {int dummy; } ;
typedef int port_range ;


 int GETLOPORT (int ) ;
 int GETNUMPORTS (int ) ;
 void* INADDR_ANY ;
 void* INADDR_NONE ;
 int LibAliasAddServer (int ,struct alias_link*,struct in_addr,int ) ;
 struct alias_link* LibAliasRedirectPort (int ,struct in_addr,int ,struct in_addr,int ,struct in_addr,int ,int) ;
 int SETLOPORT (int ,int ) ;
 int SETNUMPORTS (int ,int) ;
 int StrToAddr (char*,struct in_addr*) ;
 scalar_t__ StrToAddrAndPortRange (char*,struct in_addr*,char*,int *) ;
 scalar_t__ StrToPortRange (char*,char*,int *) ;
 int StrToProto (char*) ;
 int errx (int,char*) ;
 int free (char*) ;
 int htons (int) ;
 int mla ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 char* strtok (char*,char*) ;

void SetupPortRedirect (const char* parms)
{
 char *buf;
 char* ptr;
 char* serverPool;
 struct in_addr localAddr;
 struct in_addr publicAddr;
 struct in_addr remoteAddr;
 port_range portRange;
 u_short localPort = 0;
 u_short publicPort = 0;
 u_short remotePort = 0;
 u_short numLocalPorts = 0;
 u_short numPublicPorts = 0;
 u_short numRemotePorts = 0;
 int proto;
 char* protoName;
 char* separator;
 int i;
 struct alias_link *aliaslink = ((void*)0);

 buf = strdup (parms);
 if (!buf)
  errx (1, "redirect_port: strdup() failed");



 protoName = strtok (buf, " \t");
 if (!protoName)
  errx (1, "redirect_port: missing protocol");

 proto = StrToProto (protoName);



 ptr = strtok (((void*)0), " \t");
 if (!ptr)
  errx (1, "redirect_port: missing local address");

 separator = strchr(ptr, ',');
 if (separator) {
  localAddr.s_addr = INADDR_NONE;
  localPort = ~0;
  numLocalPorts = 1;
  serverPool = ptr;
 } else {
  if ( StrToAddrAndPortRange (ptr, &localAddr, protoName, &portRange) != 0 )
   errx (1, "redirect_port: invalid local port range");

  localPort = GETLOPORT(portRange);
  numLocalPorts = GETNUMPORTS(portRange);
  serverPool = ((void*)0);
 }




 ptr = strtok (((void*)0), " \t");
 if (!ptr)
  errx (1, "redirect_port: missing public port");

 separator = strchr (ptr, ':');
 if (separator) {
         if (StrToAddrAndPortRange (ptr, &publicAddr, protoName, &portRange) != 0 )
          errx (1, "redirect_port: invalid public port range");
 }
 else {
  publicAddr.s_addr = INADDR_ANY;
  if (StrToPortRange (ptr, protoName, &portRange) != 0)
          errx (1, "redirect_port: invalid public port range");
 }

 publicPort = GETLOPORT(portRange);
 numPublicPorts = GETNUMPORTS(portRange);




 ptr = strtok (((void*)0), " \t");
 if (ptr) {
  separator = strchr (ptr, ':');
  if (separator) {
          if (StrToAddrAndPortRange (ptr, &remoteAddr, protoName, &portRange) != 0)
           errx (1, "redirect_port: invalid remote port range");
  } else {
          SETLOPORT(portRange, 0);
   SETNUMPORTS(portRange, 1);
   StrToAddr (ptr, &remoteAddr);
  }
 }
 else {
         SETLOPORT(portRange, 0);
  SETNUMPORTS(portRange, 1);
  remoteAddr.s_addr = INADDR_ANY;
 }

 remotePort = GETLOPORT(portRange);
 numRemotePorts = GETNUMPORTS(portRange);




 if (numLocalPorts != numPublicPorts)
         errx (1, "redirect_port: port ranges must be equal in size");


 if (numRemotePorts != numLocalPorts && (numRemotePorts != 1 || remotePort != 0))
         errx (1, "redirect_port: remote port must be 0 or equal to local port range in size");

 for (i = 0 ; i < numPublicPorts ; ++i) {

         u_short remotePortCopy = remotePort + i;
         if (numRemotePorts == 1 && remotePort == 0)
          remotePortCopy = 0;

  aliaslink = LibAliasRedirectPort (mla, localAddr,
      htons(localPort + i),
      remoteAddr,
      htons(remotePortCopy),
      publicAddr,
      htons(publicPort + i),
      proto);
 }




 if (serverPool != ((void*)0) && aliaslink != ((void*)0)) {
  ptr = strtok(serverPool, ",");
  while (ptr != ((void*)0)) {
   if (StrToAddrAndPortRange(ptr, &localAddr, protoName, &portRange) != 0)
    errx(1, "redirect_port: invalid local port range");

   localPort = GETLOPORT(portRange);
   if (GETNUMPORTS(portRange) != 1)
    errx(1, "redirect_port: local port must be single in this context");
   LibAliasAddServer(mla, aliaslink, localAddr, htons(localPort));
   ptr = strtok(((void*)0), ",");
  }
 }

 free (buf);
}
