
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;
struct alias_link {int dummy; } ;


 int INADDR_NONE ;
 int LibAliasAddServer (int ,struct alias_link*,struct in_addr,int ) ;
 struct alias_link* LibAliasRedirectAddr (int ,struct in_addr,struct in_addr) ;
 int StrToAddr (char*,struct in_addr*) ;
 int errx (int,char*) ;
 int free (char*) ;
 int htons (int ) ;
 int mla ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 char* strtok (char*,char*) ;

void SetupAddressRedirect (const char* parms)
{
 char *buf;
 char* ptr;
 char* separator;
 struct in_addr localAddr;
 struct in_addr publicAddr;
 char* serverPool;
 struct alias_link *aliaslink;

 buf = strdup (parms);
 if (!buf)
  errx (1, "redirect_port: strdup() failed");



 ptr = strtok (buf, " \t");
 if (!ptr)
  errx (1, "redirect_address: missing local address");

 separator = strchr(ptr, ',');
 if (separator) {
  localAddr.s_addr = INADDR_NONE;
  serverPool = ptr;
 } else {
  StrToAddr (ptr, &localAddr);
  serverPool = ((void*)0);
 }



 ptr = strtok (((void*)0), " \t");
 if (!ptr)
  errx (1, "redirect_address: missing public address");

 StrToAddr (ptr, &publicAddr);
 aliaslink = LibAliasRedirectAddr(mla, localAddr, publicAddr);




 if (serverPool != ((void*)0) && aliaslink != ((void*)0)) {
  ptr = strtok(serverPool, ",");
  while (ptr != ((void*)0)) {
   StrToAddr(ptr, &localAddr);
   LibAliasAddServer(mla, aliaslink, localAddr, htons(~0));
   ptr = strtok(((void*)0), ",");
  }
 }

 free (buf);
}
