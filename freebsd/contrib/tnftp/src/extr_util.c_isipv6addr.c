
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_flags; int ai_socktype; int ai_family; } ;
typedef int hints ;


 int AF_INET6 ;
 int AI_NUMERICHOST ;
 int DPRINTF (char*,int,char const*) ;
 int SOCK_DGRAM ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;

int
isipv6addr(const char *addr)
{
 int rv = 0;
 return (rv == 1) ? 1 : 0;
}
