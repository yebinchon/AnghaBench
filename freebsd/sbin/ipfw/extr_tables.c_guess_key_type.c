
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;


 int AF_INET ;
 int AF_INET6 ;
 int IPFW_TABLE_CIDR ;
 int IPFW_TABLE_INTERFACE ;
 int IPFW_TABLE_NUMBER ;
 int inet_pton (int ,char*,struct in6_addr*) ;
 scalar_t__ ishexnumber (char) ;
 scalar_t__ lookup_host (char*,struct in_addr*) ;
 char* strchr (char*,char) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static int
guess_key_type(char *key, uint8_t *ptype)
{
 char *p;
 struct in6_addr addr;
 uint32_t kv;

 if (ishexnumber(*key) != 0 || *key == ':') {

  if ((p = strchr(key, '/')) != ((void*)0))
   *p = '\0';

  if ((inet_pton(AF_INET, key, &addr) == 1) ||
      (inet_pton(AF_INET6, key, &addr) == 1)) {
   *ptype = IPFW_TABLE_CIDR;
   if (p != ((void*)0))
    *p = '/';
   return (0);
  } else {


   kv = strtol(key, &p, 10);
   if (*p == '\0') {
    *ptype = IPFW_TABLE_NUMBER;
    return (0);
   } else if ((p != key) && (*p == '.')) {







    return (1);
   }
  }
 }

 if (strchr(key, '.') == ((void*)0)) {
  *ptype = IPFW_TABLE_INTERFACE;
  return (0);
 }

 if (lookup_host(key, (struct in_addr *)&addr) != 0)
  return (1);

 *ptype = IPFW_TABLE_CIDR;
 return (0);
}
