
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_transfer {int * chunks_last; struct auth_chunk* chunks_first; } ;
struct auth_chunk {struct auth_chunk* data; struct auth_chunk* next; } ;


 int free (struct auth_chunk*) ;

__attribute__((used)) static void
auth_chunks_delete(struct auth_transfer* at)
{
 if(at->chunks_first) {
  struct auth_chunk* c, *cn;
  c = at->chunks_first;
  while(c) {
   cn = c->next;
   free(c->data);
   free(c);
   c = cn;
  }
 }
 at->chunks_first = ((void*)0);
 at->chunks_last = ((void*)0);
}
