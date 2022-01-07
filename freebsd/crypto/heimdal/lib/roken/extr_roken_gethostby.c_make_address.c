
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {unsigned char s_addr; } ;
struct hostent {scalar_t__ h_addr; } ;


 struct hostent* gethostbyname (char const*) ;
 scalar_t__ inet_aton (char const*,struct in_addr*) ;

__attribute__((used)) static int
make_address(const char *address, struct in_addr *ip)
{
    if(inet_aton(address, ip) == 0){


 struct hostent *he = gethostbyname(address);
 if(he) {
     unsigned char *p = (unsigned char*)he->h_addr;
     ip->s_addr = (p[0] << 24) | (p[1] << 16) | (p[2] << 8) | p[3];
 } else {
     return -1;
 }
    }
    return 0;
}
