
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct ctx_query {TYPE_1__* res; scalar_t__ msg_security; scalar_t__ querynum; } ;
typedef int sldns_buffer ;
struct TYPE_2__ {int why_bogus; scalar_t__ was_ratelimited; } ;


 size_t UB_LIBCMD_ANSWER ;
 scalar_t__ malloc (size_t) ;
 int memmove (int *,int ,size_t) ;
 int sldns_buffer_begin (int *) ;
 size_t sldns_buffer_remaining (int *) ;
 int sldns_write_uint32 (int *,size_t) ;
 int strlen (int ) ;

uint8_t*
context_serialize_answer(struct ctx_query* q, int err, sldns_buffer* pkt,
 uint32_t* len)
{
 size_t size_of_uint32s = 6 * sizeof(uint32_t);
 size_t pkt_len = pkt?sldns_buffer_remaining(pkt):0;
 size_t wlen = (pkt&&q->res->why_bogus)?strlen(q->res->why_bogus)+1:0;
 uint8_t* p;
 *len = size_of_uint32s + pkt_len + wlen;
 p = (uint8_t*)malloc(*len);
 if(!p) return ((void*)0);
 sldns_write_uint32(p, UB_LIBCMD_ANSWER);
 sldns_write_uint32(p+sizeof(uint32_t), (uint32_t)q->querynum);
 sldns_write_uint32(p+2*sizeof(uint32_t), (uint32_t)err);
 sldns_write_uint32(p+3*sizeof(uint32_t), (uint32_t)q->msg_security);
 sldns_write_uint32(p+4*sizeof(uint32_t), (uint32_t)q->res->was_ratelimited);
 sldns_write_uint32(p+5*sizeof(uint32_t), (uint32_t)wlen);
 if(wlen > 0)
  memmove(p+size_of_uint32s, q->res->why_bogus, wlen);
 if(pkt_len > 0)
  memmove(p+size_of_uint32s+wlen,
   sldns_buffer_begin(pkt), pkt_len);
 return p;
}
