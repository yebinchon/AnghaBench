
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct ctx_query {TYPE_1__* res; scalar_t__ querynum; } ;
struct TYPE_2__ {int qname; scalar_t__ qclass; scalar_t__ qtype; } ;


 int UB_LIBCMD_NEWQUERY ;
 scalar_t__ malloc (int) ;
 int memmove (int *,int ,size_t) ;
 int sldns_write_uint32 (int *,int) ;
 int strlen (int ) ;

uint8_t*
context_serialize_new_query(struct ctx_query* q, uint32_t* len)
{







 uint8_t* p;
 size_t slen = strlen(q->res->qname) + 1 ;
 *len = sizeof(uint32_t)*4 + slen;
 p = (uint8_t*)malloc(*len);
 if(!p) return ((void*)0);
 sldns_write_uint32(p, UB_LIBCMD_NEWQUERY);
 sldns_write_uint32(p+sizeof(uint32_t), (uint32_t)q->querynum);
 sldns_write_uint32(p+2*sizeof(uint32_t), (uint32_t)q->res->qtype);
 sldns_write_uint32(p+3*sizeof(uint32_t), (uint32_t)q->res->qclass);
 memmove(p+4*sizeof(uint32_t), q->res->qname, slen);
 return p;
}
