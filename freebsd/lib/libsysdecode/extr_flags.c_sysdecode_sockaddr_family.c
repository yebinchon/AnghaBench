
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int sockfamily ;

const char *
sysdecode_sockaddr_family(int sa_family)
{

 return (lookup_value(sockfamily, sa_family));
}
