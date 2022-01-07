
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_reasm {struct ip_reasm* ip_pkt; struct ip_reasm* ipq_pkt; int ip_queue; } ;
struct ip_queue {struct ip_queue* ip_pkt; struct ip_queue* ipq_pkt; int ip_queue; } ;


 struct ip_reasm* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int free (struct ip_reasm*) ;
 int ipq_next ;

__attribute__((used)) static void
ip_reasm_free(struct ip_reasm *ipr)
{
 struct ip_queue *ipq;

 while ((ipq = STAILQ_FIRST(&ipr->ip_queue)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&ipr->ip_queue, ipq_next);
  free(ipq->ipq_pkt);
  free(ipq);
 }
 free(ipr->ip_pkt);
 free(ipr);
}
