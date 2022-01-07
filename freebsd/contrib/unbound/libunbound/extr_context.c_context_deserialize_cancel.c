
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ub_ctx {int queries; } ;
struct ctx_query {int dummy; } ;


 scalar_t__ UB_LIBCMD_CANCEL ;
 int log_assert (int) ;
 scalar_t__ rbtree_search (int *,int*) ;
 scalar_t__ sldns_read_uint32 (int *) ;

struct ctx_query* context_deserialize_cancel(struct ub_ctx* ctx,
        uint8_t* p, uint32_t len)
{
 struct ctx_query* q;
 int id;
 if(len != 2*sizeof(uint32_t)) return ((void*)0);
 log_assert( sldns_read_uint32(p) == UB_LIBCMD_CANCEL);
 id = (int)sldns_read_uint32(p+sizeof(uint32_t));
 q = (struct ctx_query*)rbtree_search(&ctx->queries, &id);
 return q;
}
