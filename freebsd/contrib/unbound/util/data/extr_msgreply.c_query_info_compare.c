
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_info {scalar_t__ qname_len; int qclass; int qname; int qtype; } ;


 int COMPARE_IT (int ,int ) ;
 int log_assert (int) ;
 int query_dname_compare (int ,int ) ;

int
query_info_compare(void* m1, void* m2)
{
 struct query_info* msg1 = (struct query_info*)m1;
 struct query_info* msg2 = (struct query_info*)m2;
 int mc;

 COMPARE_IT(msg1->qtype, msg2->qtype);
 if((mc = query_dname_compare(msg1->qname, msg2->qname)) != 0)
  return mc;
 log_assert(msg1->qname_len == msg2->qname_len);
 COMPARE_IT(msg1->qclass, msg2->qclass);
 return 0;

}
