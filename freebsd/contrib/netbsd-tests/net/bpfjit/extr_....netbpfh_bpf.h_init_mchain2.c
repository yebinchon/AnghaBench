
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mbuf {char* m_data; size_t m_len; struct mbuf* m_next; } ;


 int memset (struct mbuf*,int ,int) ;

__attribute__((used)) static inline const uint8_t *
init_mchain2(struct mbuf *mb1, struct mbuf *mb2,
    unsigned char pkt[], size_t pktsize, size_t split)
{

 (void)memset(mb1, 0, sizeof(*mb1));
 mb1->m_data = (char *)pkt;
 mb1->m_next = (split < pktsize) ? mb2 : ((void*)0);
 mb1->m_len = (split < pktsize) ? split : pktsize;

 if (split < pktsize) {
  (void)memset(mb2, 0, sizeof(*mb2));
  mb2->m_next = ((void*)0);
  mb2->m_data = (char *)&pkt[split];
  mb2->m_len = pktsize - split;
 }

 return (const uint8_t*)mb1;
}
