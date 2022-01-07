
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef int ev_uint16_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 void* htons (int ) ;

__attribute__((used)) static void
sockaddr_setport(struct sockaddr *sa, ev_uint16_t port)
{
 if (sa->sa_family == AF_INET) {
  ((struct sockaddr_in *)sa)->sin_port = htons(port);
 } else if (sa->sa_family == AF_INET6) {
  ((struct sockaddr_in6 *)sa)->sin6_port = htons(port);
 }
}
