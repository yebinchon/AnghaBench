
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int sockdomain ;

const char *
sysdecode_socketdomain(int domain)
{

 return (lookup_value(sockdomain, domain));
}
