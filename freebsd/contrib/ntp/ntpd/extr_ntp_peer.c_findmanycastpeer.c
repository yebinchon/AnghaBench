
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkt {int org; } ;
struct recvbuf {struct pkt recv_pkt; } ;
struct peer {int cast_flags; int aorg; struct peer* p_link; } ;
typedef int l_fp ;


 scalar_t__ L_ISEQU (int *,int *) ;
 int MDF_SOLICIT_MASK ;
 int NTOHL_FP (int *,int *) ;
 struct peer* peer_list ;

struct peer *
findmanycastpeer(
 struct recvbuf *rbufp
 )
{
 struct peer *peer;
 struct pkt *pkt;
 l_fp p_org;
 pkt = &rbufp->recv_pkt;
 for (peer = peer_list; peer != ((void*)0); peer = peer->p_link)
  if (MDF_SOLICIT_MASK & peer->cast_flags) {
   NTOHL_FP(&pkt->org, &p_org);
   if (L_ISEQU(&p_org, &peer->aorg))
    break;
  }

 return peer;
}
