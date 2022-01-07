
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int dummy; } ;


 int get_port (struct addrinfo*,char const*,int) ;

__attribute__((used)) static int
get_portmatch(const struct addrinfo *ai, const char *servname)
{



 return get_port((struct addrinfo *)ai, servname, 1);
}
