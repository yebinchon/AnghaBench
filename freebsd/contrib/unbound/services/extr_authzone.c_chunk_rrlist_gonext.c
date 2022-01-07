
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_chunk {scalar_t__ len; struct auth_chunk* next; int data; } ;


 scalar_t__ LDNS_ANCOUNT (int ) ;
 scalar_t__ LDNS_HEADER_SIZE ;

__attribute__((used)) static void
chunk_rrlist_gonext(struct auth_chunk** rr_chunk, int* rr_num,
 size_t* rr_pos, size_t rr_nextpos)
{

 if(!*rr_chunk)
  return;

 if((*rr_chunk)->len >= LDNS_HEADER_SIZE &&
  (*rr_num)+1 < (int)LDNS_ANCOUNT((*rr_chunk)->data)) {
  (*rr_num) += 1;
  *rr_pos = rr_nextpos;
  return;
 }


 if(*rr_chunk)
  *rr_chunk = (*rr_chunk)->next;
 while(*rr_chunk) {
  *rr_num = 0;
  *rr_pos = 0;
  if((*rr_chunk)->len >= LDNS_HEADER_SIZE &&
   LDNS_ANCOUNT((*rr_chunk)->data) > 0) {
   return;
  }
  *rr_chunk = (*rr_chunk)->next;
 }
}
