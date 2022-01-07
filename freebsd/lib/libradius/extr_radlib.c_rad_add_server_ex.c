
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct servent {void* s_port; } ;
struct TYPE_2__ {int sin_len; void* sin_port; int sin_addr; int sin_family; } ;
struct rad_server {int timeout; int max_tries; int dead_time; int bindto; scalar_t__ next_probe; scalar_t__ is_dead; scalar_t__ num_tries; int * secret; TYPE_1__ addr; } ;
struct rad_handle {size_t num_servers; scalar_t__ type; struct rad_server* servers; } ;
struct in_addr {int s_addr; } ;
struct hostent {int h_addr; } ;


 int AF_INET ;
 size_t MAXSERVERS ;
 int RADACCT_PORT ;
 scalar_t__ RADIUS_AUTH ;
 int RADIUS_PORT ;
 int generr (struct rad_handle*,char*,...) ;
 struct hostent* gethostbyname (char const*) ;
 struct servent* getservbyname (char*,char*) ;
 void* htons (int ) ;
 int inet_aton (char const*,int *) ;
 int memcpy (int *,int ,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int * strdup (char const*) ;

int
rad_add_server_ex(struct rad_handle *h, const char *host, int port,
    const char *secret, int timeout, int tries, int dead_time,
    struct in_addr *bindto)
{
 struct rad_server *srvp;

 if (h->num_servers >= MAXSERVERS) {
  generr(h, "Too many RADIUS servers specified");
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
 if (port != 0)
  srvp->addr.sin_port = htons((u_short)port);
 else {
  struct servent *sent;

  if (h->type == RADIUS_AUTH)
   srvp->addr.sin_port =
       (sent = getservbyname("radius", "udp")) != ((void*)0) ?
    sent->s_port : htons(RADIUS_PORT);
  else
   srvp->addr.sin_port =
       (sent = getservbyname("radacct", "udp")) != ((void*)0) ?
    sent->s_port : htons(RADACCT_PORT);
 }
 if ((srvp->secret = strdup(secret)) == ((void*)0)) {
  generr(h, "Out of memory");
  return -1;
 }
 srvp->timeout = timeout;
 srvp->max_tries = tries;
 srvp->num_tries = 0;
 srvp->is_dead = 0;
 srvp->dead_time = dead_time;
 srvp->next_probe = 0;
 srvp->bindto = bindto->s_addr;
 h->num_servers++;
 return 0;
}
