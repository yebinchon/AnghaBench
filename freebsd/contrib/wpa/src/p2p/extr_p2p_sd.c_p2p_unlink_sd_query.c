
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_sd_query {struct p2p_sd_query* next; scalar_t__ for_all_peers; } ;
struct p2p_data {struct p2p_sd_query* sd_query; struct p2p_sd_query* sd_queries; } ;


 int p2p_decrease_sd_bc_queries (struct p2p_data*,int) ;

__attribute__((used)) static int p2p_unlink_sd_query(struct p2p_data *p2p,
          struct p2p_sd_query *query)
{
 struct p2p_sd_query *q, *prev;
 int query_number = 0;

 q = p2p->sd_queries;
 prev = ((void*)0);
 while (q) {
  if (q == query) {


   if (query->for_all_peers)
    p2p_decrease_sd_bc_queries(p2p, query_number);
   if (prev)
    prev->next = q->next;
   else
    p2p->sd_queries = q->next;
   if (p2p->sd_query == query)
    p2p->sd_query = ((void*)0);
   return 1;
  }
  if (q->for_all_peers)
   query_number++;
  prev = q;
  q = q->next;
 }
 return 0;
}
