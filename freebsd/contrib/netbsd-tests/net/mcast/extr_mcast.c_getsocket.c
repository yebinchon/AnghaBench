
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {struct sockaddr const* ai_addr; int ai_addrlen; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
typedef int socklen_t ;
typedef int hints ;


 int AF_UNSPEC ;
 int ERRX (int ,char*,char const*,char const*,...) ;
 int EXIT_FAILURE ;
 int SOCK_DGRAM ;
 int addmc (int,struct addrinfo*,int) ;
 int allowv4mapped (int,struct addrinfo*) ;
 int bind (int,struct sockaddr const*,int ) ;
 int close (int) ;
 int connector (int,struct sockaddr const*,int ) ;
 int errno ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int socket (int ,int ,int ) ;
 int strerror (int) ;
 int stub1 (int,struct sockaddr const*,int ) ;

__attribute__((used)) static int
getsocket(const char *host, const char *port,
    int (*f)(int, const struct sockaddr *, socklen_t), socklen_t *slen,
    bool bug)
{
 int e, s, lasterrno = 0;
 struct addrinfo hints, *ai0, *ai;
 const char *cause = "?";

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = AF_UNSPEC;
 hints.ai_socktype = SOCK_DGRAM;
 e = getaddrinfo(host, port, &hints, &ai0);
 if (e)
  ERRX(EXIT_FAILURE, "Can't resolve %s:%s (%s)", host, port,
      gai_strerror(e));

 s = -1;
 for (ai = ai0; ai; ai = ai->ai_next) {
  s = socket(ai->ai_family, ai->ai_socktype, ai->ai_protocol);
  if (s == -1) {
   lasterrno = errno;
   cause = "socket";
   continue;
  }
  if (allowv4mapped(s, ai) == -1) {
   cause = "allow v4 mapped";
   goto out;
  }
  if ((*f)(s, ai->ai_addr, ai->ai_addrlen) == -1) {
   cause = f == bind ? "bind" : "connect";
   goto out;
  }
  if ((f == bind || f == connector) && addmc(s, ai, bug) == -1) {
   cause = "join group";
   goto out;
  }
  *slen = ai->ai_addrlen;
  break;
out:
  lasterrno = errno;
  close(s);
  s = -1;
  continue;
 }
 freeaddrinfo(ai0);
 if (s == -1)
  ERRX(EXIT_FAILURE, "%s (%s)", cause, strerror(lasterrno));
 return s;
}
