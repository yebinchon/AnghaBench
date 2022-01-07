
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct hostent {int h_addr; } ;


 int errx (int,char*,char const*) ;
 struct hostent* gethostbyname (char const*) ;
 scalar_t__ inet_aton (char const*,struct in_addr*) ;
 int memcpy (struct in_addr*,int ,int) ;

void StrToAddr (const char* str, struct in_addr* addr)
{
 struct hostent* hp;

 if (inet_aton (str, addr))
  return;

 hp = gethostbyname (str);
 if (!hp)
  errx (1, "unknown host %s", str);

 memcpy (addr, hp->h_addr, sizeof (struct in_addr));
}
