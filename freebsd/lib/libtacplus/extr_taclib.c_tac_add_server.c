
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sin_len; int sin_port; int sin_addr; int sin_family; } ;
struct tac_server {int timeout; int flags; int * secret; TYPE_1__ addr; } ;
struct tac_handle {size_t num_servers; struct tac_server* servers; } ;
struct hostent {int h_addr; } ;


 int AF_INET ;
 size_t MAXSERVERS ;
 int TACPLUS_PORT ;
 int generr (struct tac_handle*,char*,...) ;
 struct hostent* gethostbyname (char const*) ;
 int htons (int) ;
 int inet_aton (char const*,int *) ;
 int memcpy (int *,int ,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int * xstrdup (struct tac_handle*,char const*) ;

int
tac_add_server(struct tac_handle *h, const char *host, int port,
    const char *secret, int timeout, int flags)
{
 struct tac_server *srvp;

 if (h->num_servers >= MAXSERVERS) {
  generr(h, "Too many TACACS+ servers specified");
  return -1;
 }
 srvp = &h->servers[h->num_servers];

 memset(&srvp->addr, 0, sizeof srvp->addr);
 srvp->addr.sin_len = sizeof srvp->addr;
 srvp->addr.sin_family = AF_INET;
 if (!inet_aton(host, &srvp->addr.sin_addr)) {
  struct hostent *hent;

  if ((hent = gethostbyname(host)) == ((void*)0)) {
   generr(h, "%s: host not found", host);
   return -1;
  }
  memcpy(&srvp->addr.sin_addr, hent->h_addr,
      sizeof srvp->addr.sin_addr);
 }
 srvp->addr.sin_port = htons(port != 0 ? port : TACPLUS_PORT);
 if ((srvp->secret = xstrdup(h, secret)) == ((void*)0))
  return -1;
 srvp->timeout = timeout;
 srvp->flags = flags;
 h->num_servers++;
 return 0;
}
