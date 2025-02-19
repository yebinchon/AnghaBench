
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serviced_query {int qbuflen; int qbuf; scalar_t__ dnssec; int addrlen; int addr; int opt_list; } ;


 int edns_opt_list_compare (int ,int ) ;
 int log_assert (int) ;
 int memcmp (int,int,int) ;
 int query_dname_compare (int,int) ;
 int sockaddr_cmp (int *,int ,int *,int ) ;

int
serviced_cmp(const void* key1, const void* key2)
{
 struct serviced_query* q1 = (struct serviced_query*)key1;
 struct serviced_query* q2 = (struct serviced_query*)key2;
 int r;
 if(q1->qbuflen < q2->qbuflen)
  return -1;
 if(q1->qbuflen > q2->qbuflen)
  return 1;
 log_assert(q1->qbuflen == q2->qbuflen);
 log_assert(q1->qbuflen >= 15 );

 if((r = memcmp(q1->qbuf, q2->qbuf, 10)) != 0)
  return r;
 if((r = memcmp(q1->qbuf+q1->qbuflen-4, q2->qbuf+q2->qbuflen-4, 4)) != 0)
  return r;
 if(q1->dnssec != q2->dnssec) {
  if(q1->dnssec < q2->dnssec)
   return -1;
  return 1;
 }
 if((r = query_dname_compare(q1->qbuf+10, q2->qbuf+10)) != 0)
  return r;
 if((r = edns_opt_list_compare(q1->opt_list, q2->opt_list)) != 0)
  return r;
 return sockaddr_cmp(&q1->addr, q1->addrlen, &q2->addr, q2->addrlen);
}
