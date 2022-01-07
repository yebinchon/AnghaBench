
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ctx_query {scalar_t__ querynum; } ;


 int UB_LIBCMD_CANCEL ;
 scalar_t__ reallocarray (int *,int,int) ;
 int sldns_write_uint32 (int *,int) ;

uint8_t*
context_serialize_cancel(struct ctx_query* q, uint32_t* len)
{



 uint8_t* p = (uint8_t*)reallocarray(((void*)0), sizeof(uint32_t), 2);
 if(!p) return ((void*)0);
 *len = 2*sizeof(uint32_t);
 sldns_write_uint32(p, UB_LIBCMD_CANCEL);
 sldns_write_uint32(p+sizeof(uint32_t), (uint32_t)q->querynum);
 return p;
}
