
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent {int p_proto; } ;
struct in_addr {void* s_addr; } ;


 void* INADDR_ANY ;
 int LibAliasRedirectProto (int ,struct in_addr,struct in_addr,struct in_addr,int) ;
 int StrToAddr (char*,struct in_addr*) ;
 int errx (int,char*,...) ;
 int free (char*) ;
 struct protoent* getprotobyname (char*) ;
 int mla ;
 char* strdup (char const*) ;
 char* strtok (char*,char*) ;

void
SetupProtoRedirect(const char* parms)
{
 char *buf;
 char* ptr;
 struct in_addr localAddr;
 struct in_addr publicAddr;
 struct in_addr remoteAddr;
 int proto;
 char* protoName;
 struct protoent *protoent;

 buf = strdup (parms);
 if (!buf)
  errx (1, "redirect_port: strdup() failed");



 protoName = strtok(buf, " \t");
 if (!protoName)
  errx(1, "redirect_proto: missing protocol");

 protoent = getprotobyname(protoName);
 if (protoent == ((void*)0))
  errx(1, "redirect_proto: unknown protocol %s", protoName);
 else
  proto = protoent->p_proto;



 ptr = strtok(((void*)0), " \t");
 if (!ptr)
  errx(1, "redirect_proto: missing local address");
 else
  StrToAddr(ptr, &localAddr);



 ptr = strtok(((void*)0), " \t");
 if (ptr)
  StrToAddr(ptr, &publicAddr);
 else
  publicAddr.s_addr = INADDR_ANY;



 ptr = strtok(((void*)0), " \t");
 if (ptr)
  StrToAddr(ptr, &remoteAddr);
 else
  remoteAddr.s_addr = INADDR_ANY;



 (void)LibAliasRedirectProto(mla, localAddr, remoteAddr, publicAddr,
           proto);

 free (buf);
}
