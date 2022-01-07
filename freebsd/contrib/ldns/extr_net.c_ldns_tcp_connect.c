
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
typedef int socklen_t ;


 int ldns_tcp_connect_from (struct sockaddr_storage const*,int ,int *,int ,struct timeval) ;

int
ldns_tcp_connect(const struct sockaddr_storage *to, socklen_t tolen,
  struct timeval timeout)
{
 return ldns_tcp_connect_from(to, tolen, ((void*)0), 0, timeout);
}
