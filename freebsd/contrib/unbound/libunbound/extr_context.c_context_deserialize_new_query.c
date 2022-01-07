
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int* key; } ;
struct ub_result {int querynum; int async; int qtype; int qclass; TYPE_1__ node; struct ub_result* res; int qname; } ;
struct ub_ctx {int queries; int num_async; } ;
struct ctx_query {int querynum; int async; int qtype; int qclass; TYPE_1__ node; struct ctx_query* res; int qname; } ;


 scalar_t__ UB_LIBCMD_NEWQUERY ;
 scalar_t__ calloc (int,int) ;
 int free (struct ub_result*) ;
 int log_assert (int) ;
 int rbtree_insert (int *,TYPE_1__*) ;
 scalar_t__ sldns_read_uint32 (int *) ;
 int strdup (char*) ;

struct ctx_query*
context_deserialize_new_query(struct ub_ctx* ctx, uint8_t* p, uint32_t len)
{
 struct ctx_query* q = (struct ctx_query*)calloc(1, sizeof(*q));
 if(!q) return ((void*)0);
 if(len < 4*sizeof(uint32_t)+1) {
  free(q);
  return ((void*)0);
 }
 log_assert( sldns_read_uint32(p) == UB_LIBCMD_NEWQUERY);
 q->querynum = (int)sldns_read_uint32(p+sizeof(uint32_t));
 q->node.key = &q->querynum;
 q->async = 1;
 q->res = (struct ub_result*)calloc(1, sizeof(*q->res));
 if(!q->res) {
  free(q);
  return ((void*)0);
 }
 q->res->qtype = (int)sldns_read_uint32(p+2*sizeof(uint32_t));
 q->res->qclass = (int)sldns_read_uint32(p+3*sizeof(uint32_t));
 q->res->qname = strdup((char*)(p+4*sizeof(uint32_t)));
 if(!q->res->qname) {
  free(q->res);
  free(q);
  return ((void*)0);
 }


 ctx->num_async++;
 (void)rbtree_insert(&ctx->queries, &q->node);
 return q;
}
