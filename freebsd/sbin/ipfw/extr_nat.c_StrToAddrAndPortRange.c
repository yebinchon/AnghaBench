
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
typedef int port_range ;


 int EX_DATAERR ;
 int StrToAddr (char const*,struct in_addr*) ;
 int StrToPortRange (char*,char*,int *) ;
 int errx (int ,char*,char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int
StrToAddrAndPortRange (const char* str, struct in_addr* addr, char* proto,
   port_range *portRange)
{
 char* ptr;

 ptr = strchr (str, ':');
 if (!ptr)
  errx (EX_DATAERR, "%s is missing port number", str);

 *ptr = '\0';
 ++ptr;

 StrToAddr (str, addr);
 return StrToPortRange (ptr, proto, portRange);
}
