
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct ub_ctx {int queries; } ;
struct ctx_query {size_t msg_len; int * msg; TYPE_1__* res; scalar_t__ msg_security; } ;
struct TYPE_2__ {int was_ratelimited; char* why_bogus; } ;


 scalar_t__ UB_LIBCMD_ANSWER ;
 int UB_NOMEM ;
 int log_assert (int) ;
 scalar_t__ memdup (int *,size_t) ;
 scalar_t__ rbtree_search (int *,int*) ;
 scalar_t__ sldns_read_uint32 (int *) ;

struct ctx_query*
context_deserialize_answer(struct ub_ctx* ctx,
        uint8_t* p, uint32_t len, int* err)
{
 size_t size_of_uint32s = 6 * sizeof(uint32_t);
 struct ctx_query* q = ((void*)0) ;
 int id;
 size_t wlen;
 if(len < size_of_uint32s) return ((void*)0);
 log_assert( sldns_read_uint32(p) == UB_LIBCMD_ANSWER);
 id = (int)sldns_read_uint32(p+sizeof(uint32_t));
 q = (struct ctx_query*)rbtree_search(&ctx->queries, &id);
 if(!q) return ((void*)0);
 *err = (int)sldns_read_uint32(p+2*sizeof(uint32_t));
 q->msg_security = sldns_read_uint32(p+3*sizeof(uint32_t));
 q->res->was_ratelimited = (int)sldns_read_uint32(p+4*sizeof(uint32_t));
 wlen = (size_t)sldns_read_uint32(p+5*sizeof(uint32_t));
 if(len > size_of_uint32s && wlen > 0) {
  if(len >= size_of_uint32s+wlen)
   q->res->why_bogus = (char*)memdup(
    p+size_of_uint32s, wlen);
  if(!q->res->why_bogus) {

   q->msg_len = 0;
   *err = UB_NOMEM;
   return q;
  }
  q->res->why_bogus[wlen-1] = 0;
 }
 if(len > size_of_uint32s+wlen) {
  q->msg_len = len - size_of_uint32s - wlen;
  q->msg = (uint8_t*)memdup(p+size_of_uint32s+wlen,
   q->msg_len);
  if(!q->msg) {

   q->msg_len = 0;
   *err = UB_NOMEM;
   return q;
  }
 }
 return q;
}
