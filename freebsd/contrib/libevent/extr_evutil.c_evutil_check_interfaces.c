
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; void* sin6_port; void* sin6_family; int sin_addr; void* sin_port; void* sin_family; } ;
struct sockaddr_in {int sin6_addr; void* sin6_port; void* sin6_family; int sin_addr; void* sin_port; void* sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin_out ;
typedef int sin6_out ;
typedef int sin6 ;
typedef int sin ;
typedef scalar_t__ evutil_socket_t ;
typedef int ev_socklen_t ;


 void* AF_INET ;
 void* AF_INET6 ;
 int EVUTIL_ASSERT (int) ;
 int IPPROTO_UDP ;
 int SOCK_DGRAM ;
 scalar_t__ connect (scalar_t__,struct sockaddr*,int) ;
 scalar_t__ evutil_check_ifaddrs () ;
 int evutil_closesocket (scalar_t__) ;
 int evutil_found_ifaddr (struct sockaddr*) ;
 int evutil_inet_pton (void*,char*,int *) ;
 scalar_t__ getsockname (scalar_t__,struct sockaddr*,int*) ;
 scalar_t__ have_checked_interfaces ;
 void* htons (int) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 scalar_t__ socket (void*,int ,int ) ;

__attribute__((used)) static int
evutil_check_interfaces(int force_recheck)
{
 evutil_socket_t fd = -1;
 struct sockaddr_in sin, sin_out;
 struct sockaddr_in6 sin6, sin6_out;
 ev_socklen_t sin_out_len = sizeof(sin_out);
 ev_socklen_t sin6_out_len = sizeof(sin6_out);
 int r;
 if (have_checked_interfaces && !force_recheck)
  return 0;

 if (evutil_check_ifaddrs() == 0) {

  return 0;
 }






 memset(&sin, 0, sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_port = htons(53);
 r = evutil_inet_pton(AF_INET, "18.244.0.188", &sin.sin_addr);
 EVUTIL_ASSERT(r);

 memset(&sin6, 0, sizeof(sin6));
 sin6.sin6_family = AF_INET6;
 sin6.sin6_port = htons(53);
 r = evutil_inet_pton(AF_INET6, "2001:4860:b002::68", &sin6.sin6_addr);
 EVUTIL_ASSERT(r);

 memset(&sin_out, 0, sizeof(sin_out));
 memset(&sin6_out, 0, sizeof(sin6_out));


 if ((fd = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP)) >= 0 &&
     connect(fd, (struct sockaddr*)&sin, sizeof(sin)) == 0 &&
     getsockname(fd, (struct sockaddr*)&sin_out, &sin_out_len) == 0) {

  evutil_found_ifaddr((struct sockaddr*) &sin_out);
 }
 if (fd >= 0)
  evutil_closesocket(fd);

 if ((fd = socket(AF_INET6, SOCK_DGRAM, IPPROTO_UDP)) >= 0 &&
     connect(fd, (struct sockaddr*)&sin6, sizeof(sin6)) == 0 &&
     getsockname(fd, (struct sockaddr*)&sin6_out, &sin6_out_len) == 0) {

  evutil_found_ifaddr((struct sockaddr*) &sin6_out);
 }

 if (fd >= 0)
  evutil_closesocket(fd);

 return 0;
}
