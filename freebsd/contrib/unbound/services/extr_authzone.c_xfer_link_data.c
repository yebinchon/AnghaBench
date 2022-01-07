
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auth_xfer {TYPE_1__* task_transfer; } ;
struct auth_chunk {struct auth_chunk* next; int data; int len; } ;
typedef int sldns_buffer ;
struct TYPE_2__ {struct auth_chunk* chunks_last; struct auth_chunk* chunks_first; } ;


 scalar_t__ calloc (int,int) ;
 int free (struct auth_chunk*) ;
 int memdup (int ,int ) ;
 int sldns_buffer_begin (int *) ;
 int sldns_buffer_limit (int *) ;

__attribute__((used)) static int
xfer_link_data(sldns_buffer* pkt, struct auth_xfer* xfr)
{

 struct auth_chunk* e;
 e = (struct auth_chunk*)calloc(1, sizeof(*e));
 if(!e) return 0;
 e->next = ((void*)0);
 e->len = sldns_buffer_limit(pkt);
 e->data = memdup(sldns_buffer_begin(pkt), e->len);
 if(!e->data) {
  free(e);
  return 0;
 }


 if(!xfr->task_transfer->chunks_first)
  xfr->task_transfer->chunks_first = e;
 if(xfr->task_transfer->chunks_last)
  xfr->task_transfer->chunks_last->next = e;
 xfr->task_transfer->chunks_last = e;
 return 1;
}
