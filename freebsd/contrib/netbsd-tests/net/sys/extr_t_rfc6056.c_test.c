
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int ai_family; int ss_family; int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ss_len; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {int ai_family; int ss_family; int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ss_len; } ;
typedef int ss ;
typedef int hints ;
typedef int hello ;
typedef int al ;




 int EXIT_FAILURE ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_PORTALGO ;
 int IP_PORTALGO ;
 int SOCK_DGRAM ;
 int abort () ;
 int bind (int,struct sockaddr*,int ) ;
 int close (int) ;
 int connect (int,int ,int ) ;
 int err (int ,char*) ;
 int errx (int ,char*,char const*,int ) ;
 int freeaddrinfo (struct sockaddr_storage*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char const*,struct sockaddr_storage*,struct sockaddr_storage**) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int send (int,char const*,int,int ) ;
 int sendto (int,char const*,int,int ,int ,int ) ;
 int setsockopt (int,int,int,int*,int) ;
 int socket (int,int ,int ) ;

__attribute__((used)) static void
test(const char *hostname, const char *service, int family, int al)
{
 static const char hello[] = "hello\n";
 int s, error, proto, option;
 struct sockaddr_storage ss;
 struct addrinfo hints, *res;

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = family;
 hints.ai_socktype = SOCK_DGRAM;

 switch (family) {
 case 129:
  proto = IPPROTO_IP;
  option = IP_PORTALGO;
  break;
 case 128:
  proto = IPPROTO_IPV6;
  option = IPV6_PORTALGO;
  break;
 default:
  abort();
 }

 error = getaddrinfo(hostname, service, &hints, &res);
 if (error)
  errx(EXIT_FAILURE, "Cannot get address for %s (%s)",
      hostname, gai_strerror(error));

 s = socket(res->ai_family, res->ai_socktype, res->ai_protocol);
 if (s == -1)
  err(EXIT_FAILURE, "socket");

 if (setsockopt(s, proto, option, &al, sizeof(al)) == -1)
  err(EXIT_FAILURE, "setsockopt");

 memset(&ss, 0, sizeof(ss));
 ss.ss_len = res->ai_addrlen;
 ss.ss_family = res->ai_family;

 if (bind(s, (struct sockaddr *)&ss, ss.ss_len) == -1)
  err(EXIT_FAILURE, "bind");

 if (sendto(s, hello, sizeof(hello) - 1, 0,
     res->ai_addr, res->ai_addrlen) == -1)
  err(EXIT_FAILURE, "sendto");

 if (close(s) == -1)
  err(EXIT_FAILURE, "close");

 s = socket(res->ai_family, res->ai_socktype, res->ai_protocol);
 if (s == -1)
  err(EXIT_FAILURE, "socket");

 if (setsockopt(s, proto, option, &al, sizeof(al)) == -1)
  err(EXIT_FAILURE, "setsockopt");

 if (connect(s, res->ai_addr, res->ai_addrlen) == -1)
  err(EXIT_FAILURE, "connect");

 if (send(s, hello, sizeof(hello) - 1, 0) == -1)
  err(EXIT_FAILURE, "send");

 if (close(s) == -1)
  err(EXIT_FAILURE, "close");

 freeaddrinfo(res);
}
