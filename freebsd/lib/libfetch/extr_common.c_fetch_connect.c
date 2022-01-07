
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {scalar_t__ ai_family; int ai_addrlen; int ai_addr; struct addrinfo* ai_next; } ;
typedef int conn_t ;


 int DEBUGF (char*,char const*,int) ;
 int SOCK_STREAM ;
 int bind (int,int ,int ) ;
 int close (int) ;
 int connect (int,int ,int ) ;
 int fetch_info (char*,char const*,...) ;
 int * fetch_reopen (int) ;
 struct addrinfo* fetch_resolve (char const*,int,int) ;
 int fetch_syserr () ;
 int freeaddrinfo (struct addrinfo*) ;
 char* getenv (char*) ;
 int socket (scalar_t__,int ,int ) ;

conn_t *
fetch_connect(const char *host, int port, int af, int verbose)
{
 struct addrinfo *cais = ((void*)0), *sais = ((void*)0), *cai, *sai;
 const char *bindaddr;
 conn_t *conn = ((void*)0);
 int err = 0, sd = -1;

 DEBUGF("---> %s:%d\n", host, port);


 if (verbose)
  fetch_info("resolving server address: %s:%d", host, port);
 if ((sais = fetch_resolve(host, port, af)) == ((void*)0))
  goto fail;


 bindaddr = getenv("FETCH_BIND_ADDRESS");
 if (bindaddr != ((void*)0) && *bindaddr != '\0') {
  if (verbose)
   fetch_info("resolving client address: %s", bindaddr);
  if ((cais = fetch_resolve(bindaddr, 0, af)) == ((void*)0))
   goto fail;
 }


 for (err = 0, sai = sais; sai != ((void*)0); sai = sai->ai_next) {

  if ((sd = socket(sai->ai_family, SOCK_STREAM, 0)) < 0)
   goto syserr;

  for (err = 0, cai = cais; cai != ((void*)0); cai = cai->ai_next) {
   if (cai->ai_family != sai->ai_family)
    continue;
   if ((err = bind(sd, cai->ai_addr, cai->ai_addrlen)) == 0)
    break;
  }
  if (err != 0) {
   if (verbose)
    fetch_info("failed to bind to %s", bindaddr);
   goto syserr;
  }

  if ((err = connect(sd, sai->ai_addr, sai->ai_addrlen)) == 0)
   break;

  close(sd);
  sd = -1;
 }
 if (err != 0) {
  if (verbose)
   fetch_info("failed to connect to %s:%d", host, port);
  goto syserr;
 }

 if ((conn = fetch_reopen(sd)) == ((void*)0))
  goto syserr;
 if (cais != ((void*)0))
  freeaddrinfo(cais);
 if (sais != ((void*)0))
  freeaddrinfo(sais);
 return (conn);
syserr:
 fetch_syserr();
 goto fail;
fail:
 if (sd >= 0)
  close(sd);
 if (cais != ((void*)0))
  freeaddrinfo(cais);
 if (sais != ((void*)0))
  freeaddrinfo(sais);
 return (((void*)0));
}
