
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef int ev_uint16_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int ntohs (int ) ;

__attribute__((used)) static ev_uint16_t
sockaddr_getport(struct sockaddr *sa)
{
 if (sa->sa_family == AF_INET) {
  return ntohs(((struct sockaddr_in *)sa)->sin_port);
 } else if (sa->sa_family == AF_INET6) {
  return ntohs(((struct sockaddr_in6 *)sa)->sin6_port);
 } else {
  return 0;
 }
}
