
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_chunk {scalar_t__ len; struct auth_chunk* next; int data; } ;


 scalar_t__ LDNS_ANCOUNT (int ) ;
 scalar_t__ LDNS_HEADER_SIZE ;

__attribute__((used)) static int
chunk_rrlist_end(struct auth_chunk* rr_chunk, int rr_num)
{
 while(rr_chunk) {
  if(rr_chunk->len < LDNS_HEADER_SIZE)
   return 1;
  if(rr_num < (int)LDNS_ANCOUNT(rr_chunk->data))
   return 0;


  rr_chunk = rr_chunk->next;
  rr_num = 0;
 }
 return 1;
}
