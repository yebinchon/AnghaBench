
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct pkt {int org; } ;
struct recvbuf {scalar_t__ dstadr; struct pkt recv_pkt; int recv_srcadr; } ;
struct peer {scalar_t__ hmode; scalar_t__ dstadr; int aorg; int srcadr; struct peer* adr_link; } ;
typedef int sockaddr_u ;
typedef int l_fp ;


 int ADDR_PORT_EQ (int *,int *) ;
 int AM_ERR ;
 int AM_NOMATCH ;
 int AM_PROCPKT ;
 int L_ISEQU (int *,int *) ;
 int MATCH_ASSOC (scalar_t__,int) ;
 scalar_t__ MODE_BCLIENT ;
 int MODE_SERVER ;
 scalar_t__ NO_PEER ;
 int NTOHL_FP (int *,int *) ;
 size_t NTP_HASH_ADDR (int *) ;
 scalar_t__ findmanycastpeer (struct recvbuf*) ;
 int findpeer_calls ;
 struct peer** peer_hash ;

struct peer *
findpeer(
 struct recvbuf *rbufp,
 int pkt_mode,
 int * action
 )
{
 struct peer * p;
 sockaddr_u * srcadr;
 u_int hash;
 struct pkt * pkt;
 l_fp pkt_org;

 findpeer_calls++;
 srcadr = &rbufp->recv_srcadr;
 hash = NTP_HASH_ADDR(srcadr);
 for (p = peer_hash[hash]; p != ((void*)0); p = p->adr_link) {



  if (p->hmode != MODE_BCLIENT && p->dstadr != rbufp->dstadr)
   continue;


  if ( ! ADDR_PORT_EQ(srcadr, &p->srcadr))
   continue;





  *action = MATCH_ASSOC(p->hmode, pkt_mode);
  if (MODE_SERVER == pkt_mode && AM_PROCPKT == *action) {
   pkt = &rbufp->recv_pkt;
   NTOHL_FP(&pkt->org, &pkt_org);
   if (!L_ISEQU(&p->aorg, &pkt_org) &&
       findmanycastpeer(rbufp))
    *action = AM_ERR;
  }


  if (*action == AM_ERR)
   return ((void*)0);


  if (*action != AM_NOMATCH)
   break;
 }


 if (((void*)0) == p)
  *action = MATCH_ASSOC(NO_PEER, pkt_mode);

 return p;
}
