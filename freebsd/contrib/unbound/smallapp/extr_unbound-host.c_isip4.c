
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct in_addr {int dummy; } ;
typedef int buf ;


 int AF_INET ;
 scalar_t__ inet_pton (int ,char const*,struct in_addr*) ;
 int snprintf (char*,int,char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 char* strdup (char*) ;

__attribute__((used)) static int
isip4(const char* nm, char** res)
{
 struct in_addr addr;

 char buf[32];
 if(inet_pton(AF_INET, nm, &addr) <= 0) {
  return 0;
 }
 snprintf(buf, sizeof(buf), "%u.%u.%u.%u.in-addr.arpa",
  (unsigned)((uint8_t*)&addr)[3], (unsigned)((uint8_t*)&addr)[2],
  (unsigned)((uint8_t*)&addr)[1], (unsigned)((uint8_t*)&addr)[0]);
 *res = strdup(buf);
 return 1;
}
