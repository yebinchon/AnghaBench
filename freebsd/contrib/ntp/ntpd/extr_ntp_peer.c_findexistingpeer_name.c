
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
struct peer {int hmode; int * hostname; int srcadr; struct peer* p_link; } ;


 scalar_t__ AF (int *) ;
 scalar_t__ AF_UNSPEC ;
 struct peer* peer_list ;
 int strcasecmp (int *,char const*) ;

__attribute__((used)) static struct peer *
findexistingpeer_name(
 const char * hostname,
 u_short hname_fam,
 struct peer * start_peer,
 int mode
 )
{
 struct peer *p;

 if (((void*)0) == start_peer)
  p = peer_list;
 else
  p = start_peer->p_link;
 for (; p != ((void*)0); p = p->p_link)
  if (p->hostname != ((void*)0)
      && (-1 == mode || p->hmode == mode)
      && (AF_UNSPEC == hname_fam
   || AF_UNSPEC == AF(&p->srcadr)
   || hname_fam == AF(&p->srcadr))
      && !strcasecmp(p->hostname, hostname))
   break;
 return p;
}
