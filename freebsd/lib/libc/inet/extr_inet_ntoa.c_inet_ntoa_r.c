
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
typedef int socklen_t ;


 int AF_INET ;
 int inet_ntop (int ,struct in_addr*,char*,int ) ;

char *
inet_ntoa_r(struct in_addr in, char *buf, socklen_t size)
{

 (void) inet_ntop(AF_INET, &in, buf, size);
 return (buf);
}
