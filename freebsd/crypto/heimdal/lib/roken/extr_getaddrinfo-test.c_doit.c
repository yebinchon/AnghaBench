
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_family; int ai_socktype; int ai_protocol; char* ai_canonname; int ai_addr; struct addrinfo* ai_next; int ai_flags; } ;
typedef int hints ;
typedef int addrstr ;


 int errx (int,char*,int ) ;
 int family ;
 int flags ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int * inet_ntop (int,int ,char*,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int ntohs (int ) ;
 int printf (char*,...) ;
 int socket_get_address (int ) ;
 int socket_get_port (int ) ;
 int socktype ;
 scalar_t__ verbose_counter ;

__attribute__((used)) static void
doit (const char *nodename, const char *servname)
{
    struct addrinfo hints;
    struct addrinfo *res, *r;
    int ret;

    if (verbose_counter)
 printf ("(%s,%s)... ", nodename ? nodename : "null", servname);

    memset (&hints, 0, sizeof(hints));
    hints.ai_flags = flags;
    hints.ai_family = family;
    hints.ai_socktype = socktype;

    ret = getaddrinfo (nodename, servname, &hints, &res);
    if (ret)
 errx(1, "error: %s\n", gai_strerror(ret));

    if (verbose_counter)
 printf ("\n");

    for (r = res; r != ((void*)0); r = r->ai_next) {
 char addrstr[256];

 if (inet_ntop (r->ai_family,
         socket_get_address (r->ai_addr),
         addrstr, sizeof(addrstr)) == ((void*)0)) {
     if (verbose_counter)
  printf ("\tbad address?\n");
     continue;
 }
 if (verbose_counter) {
     printf ("\tfamily = %d, socktype = %d, protocol = %d, "
      "address = \"%s\", port = %d",
      r->ai_family, r->ai_socktype, r->ai_protocol,
      addrstr,
      ntohs(socket_get_port (r->ai_addr)));
     if (r->ai_canonname)
  printf (", canonname = \"%s\"", r->ai_canonname);
     printf ("\n");
 }
    }
    freeaddrinfo (res);
}
