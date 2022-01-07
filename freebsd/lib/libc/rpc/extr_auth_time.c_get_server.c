
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct in_addr {int dummy; } ;
struct hostent {char** h_addr_list; } ;
struct TYPE_12__ {scalar_t__ n_len; int * n_bytes; } ;
struct TYPE_11__ {int ep_len; TYPE_5__* ep_val; } ;
struct TYPE_13__ {TYPE_3__ pkey; int key_type; TYPE_2__ ep; scalar_t__ name; } ;
typedef TYPE_4__ nis_server ;
typedef scalar_t__ nis_name ;
typedef int hname ;
struct TYPE_14__ {int * proto; int * family; int * uaddr; } ;
typedef TYPE_5__ endpoint ;


 int NIS_PK_NONE ;
 int free_eps (TYPE_5__*,int) ;
 struct hostent* gethostbyname (char*) ;
 char* inet_ntoa (struct in_addr) ;
 int snprintf (char*,int,char*,char*) ;
 void* strdup (char*) ;

__attribute__((used)) static nis_server *
get_server(struct sockaddr_in *sin, char *host, nis_server *srv,
    endpoint eps[], int maxep)
{
 char hname[256];
 int num_ep = 0, i;
 struct hostent *he;
 struct hostent dummy;
 char *ptr[2];
 endpoint *ep;

 if (host == ((void*)0) && sin == ((void*)0))
  return (((void*)0));

 if (sin == ((void*)0)) {
  he = gethostbyname(host);
  if (he == ((void*)0))
   return(((void*)0));
 } else {
  he = &dummy;
  ptr[0] = (char *)&sin->sin_addr.s_addr;
  ptr[1] = ((void*)0);
  dummy.h_addr_list = ptr;
 }





 for (i = 0, ep = eps; (he->h_addr_list[i] != ((void*)0)) && (num_ep < maxep);
     i++, ep++, num_ep++) {
  struct in_addr *a;

  a = (struct in_addr *)he->h_addr_list[i];
  snprintf(hname, sizeof(hname), "%s.0.111", inet_ntoa(*a));
  ep->uaddr = strdup(hname);
  ep->family = strdup("inet");
  ep->proto = strdup("tcp");
  if (ep->uaddr == ((void*)0) || ep->family == ((void*)0) || ep->proto == ((void*)0)) {
   free_eps(eps, num_ep + 1);
   return (((void*)0));
  }
 }

 for (i = 0; (he->h_addr_list[i] != ((void*)0)) && (num_ep < maxep);
     i++, ep++, num_ep++) {
  struct in_addr *a;

  a = (struct in_addr *)he->h_addr_list[i];
  snprintf(hname, sizeof(hname), "%s.0.111", inet_ntoa(*a));
  ep->uaddr = strdup(hname);
  ep->family = strdup("inet");
  ep->proto = strdup("udp");
  if (ep->uaddr == ((void*)0) || ep->family == ((void*)0) || ep->proto == ((void*)0)) {
   free_eps(eps, num_ep + 1);
   return (((void*)0));
  }
 }

 srv->name = (nis_name) host;
 srv->ep.ep_len = num_ep;
 srv->ep.ep_val = eps;
 srv->key_type = NIS_PK_NONE;
 srv->pkey.n_bytes = ((void*)0);
 srv->pkey.n_len = 0;
 return (srv);
}
