
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
typedef int portstr ;
typedef int nodelay ;
typedef int hints ;


 int IPPROTO_TCP ;
 int NI_MAXSERV ;
 int SOCK_STREAM ;
 int TCP_NODELAY ;
 int close (int) ;
 scalar_t__ connect (int,int ,int ) ;
 int err (int,char*) ;
 int errx (int,char*,char const*,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int ntohs (int) ;
 scalar_t__ setsockopt (int,int ,int ,void*,int) ;
 int snprintf (char*,int,char*,int) ;
 int socket (int ,int ,int ) ;
 int warn (char*,char const*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
do_connect (const char *hostname, int port, int nodelay)
{
    struct addrinfo *ai, *a;
    struct addrinfo hints;
    int error;
    int s = -1;
    char portstr[NI_MAXSERV];

    memset (&hints, 0, sizeof(hints));
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = IPPROTO_TCP;

    snprintf (portstr, sizeof(portstr), "%u", ntohs(port));

    error = getaddrinfo (hostname, portstr, &hints, &ai);
    if (error)
 errx (1, "getaddrinfo(%s): %s", hostname, gai_strerror(error));

    for (a = ai; a != ((void*)0); a = a->ai_next) {
 s = socket (a->ai_family, a->ai_socktype, a->ai_protocol);
 if (s < 0)
     continue;
 if (connect (s, a->ai_addr, a->ai_addrlen) < 0) {
     warn ("connect(%s)", hostname);
      close (s);
      continue;
 }
 break;
    }
    freeaddrinfo (ai);
    if (a == ((void*)0)) {
 warnx ("failed to contact %s", hostname);
 return -1;
    }

    if(setsockopt(s, IPPROTO_TCP, TCP_NODELAY,
    (void *)&nodelay, sizeof(nodelay)) < 0)
 err (1, "setsockopt TCP_NODELAY");
    return s;
}
