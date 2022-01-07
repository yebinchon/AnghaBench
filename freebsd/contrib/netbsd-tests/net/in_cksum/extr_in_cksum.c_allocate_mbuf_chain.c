
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {char* m_data; int m_len; struct mbuf* m_next; } ;
struct m_hdr {int dummy; } ;


 int EXIT_FAILURE ;
 int atoi (char*) ;
 int err (int ,char*) ;
 struct mbuf* malloc (int) ;
 int rand () ;
 scalar_t__ random_aligned ;

__attribute__((used)) static struct mbuf *
allocate_mbuf_chain(char **lens)
{
 int len, off;
 struct mbuf *m;

 if (*lens == ((void*)0))
  return ((void*)0);

 len = atoi(*lens);
 off = random_aligned ? rand() % 64 : 0;

 m = malloc(sizeof(struct m_hdr) + len + off);
 if (m == ((void*)0))
  err(EXIT_FAILURE, "malloc failed");

 m->m_data = (char *)m + sizeof(struct m_hdr) + off;
 m->m_len = len;

 m->m_next = allocate_mbuf_chain(lens + 1);

 return m;
}
