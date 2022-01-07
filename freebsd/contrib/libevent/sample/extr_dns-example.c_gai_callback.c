
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct evutil_addrinfo {char* ai_canonname; scalar_t__ ai_family; scalar_t__ ai_addr; struct evutil_addrinfo* ai_next; } ;
typedef int buf ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ PF_INET ;
 char* evutil_gai_strerror (int) ;
 int evutil_inet_ntop (int ,int *,char*,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
gai_callback(int err, struct evutil_addrinfo *ai, void *arg)
{
 const char *name = arg;
 int i;
 if (err) {
  printf("%s: %s\n", name, evutil_gai_strerror(err));
 }
 if (ai && ai->ai_canonname)
  printf("    %s ==> %s\n", name, ai->ai_canonname);
 for (i=0; ai; ai = ai->ai_next, ++i) {
  char buf[128];
  if (ai->ai_family == PF_INET) {
   struct sockaddr_in *sin =
       (struct sockaddr_in*)ai->ai_addr;
   evutil_inet_ntop(AF_INET, &sin->sin_addr, buf,
       sizeof(buf));
   printf("[%d] %s: %s\n",i,name,buf);
  } else {
   struct sockaddr_in6 *sin6 =
       (struct sockaddr_in6*)ai->ai_addr;
   evutil_inet_ntop(AF_INET6, &sin6->sin6_addr, buf,
       sizeof(buf));
   printf("[%d] %s: %s\n",i,name,buf);
  }
 }
}
