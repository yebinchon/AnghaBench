
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; scalar_t__ ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
typedef int hints ;


 int PF_UNSPEC ;
 int SOCK_STREAM ;
 int close (int) ;
 scalar_t__ connect (int,int ,int ) ;
 int errx (int,char*,char const*,...) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int socket (int ,int ,scalar_t__) ;
 int warn (char*,char const*) ;

__attribute__((used)) static int
do_connect (const char *hostname, const char *port)
{
    struct addrinfo *ai, *a;
    struct addrinfo hints;
    int error;
    int s = -1;

    memset (&hints, 0, sizeof(hints));
    hints.ai_family = PF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = 0;

    error = getaddrinfo (hostname, port, &hints, &ai);
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
    if (a == ((void*)0))
 errx (1, "failed to contact %s", hostname);

    return s;
}
