
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct in6_addr {int dummy; } ;
typedef int buf ;


 int AF_INET6 ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ inet_pton (int ,char const*,struct in6_addr*) ;
 int snprintf (char*,int,char*) ;
 int stderr ;
 char* strdup (char*) ;

__attribute__((used)) static int
isip6(const char* nm, char** res)
{
 struct in6_addr addr;

 const char* hex = "0123456789abcdef";
 char buf[128];
 char *p;
 int i;
 if(inet_pton(AF_INET6, nm, &addr) <= 0) {
  return 0;
 }
 p = buf;
 for(i=15; i>=0; i--) {
  uint8_t b = ((uint8_t*)&addr)[i];
  *p++ = hex[ (b&0x0f) ];
  *p++ = '.';
  *p++ = hex[ (b&0xf0) >> 4 ];
  *p++ = '.';
 }
 snprintf(buf+16*4, sizeof(buf)-16*4, "ip6.arpa");
 *res = strdup(buf);
 if(!*res) {
  fprintf(stderr, "error: out of memory\n");
  exit(1);
 }
 return 1;
}
