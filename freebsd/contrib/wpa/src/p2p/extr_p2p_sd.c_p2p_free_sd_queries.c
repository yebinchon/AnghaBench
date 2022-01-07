
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_sd_query {struct p2p_sd_query* next; } ;
struct p2p_data {scalar_t__ num_p2p_sd_queries; struct p2p_sd_query* sd_queries; } ;


 int p2p_free_sd_query (struct p2p_sd_query*) ;

void p2p_free_sd_queries(struct p2p_data *p2p)
{
 struct p2p_sd_query *q, *prev;
 q = p2p->sd_queries;
 p2p->sd_queries = ((void*)0);
 while (q) {
  prev = q;
  q = q->next;
  p2p_free_sd_query(prev);
 }
 p2p->num_p2p_sd_queries = 0;
}
