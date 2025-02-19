
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct read_ce_req {scalar_t__ offset; } ;
struct read_ce_queue {int cnt; struct read_ce_req* reqs; } ;



__attribute__((used)) static void
next_CE(struct read_ce_queue *heap)
{
 uint64_t a_offset, b_offset, c_offset;
 int a, b, c;
 struct read_ce_req tmp;

 if (heap->cnt < 1)
  return;




 heap->reqs[0] = heap->reqs[--(heap->cnt)];




 a = 0;
 a_offset = heap->reqs[a].offset;
 for (;;) {
  b = a + a + 1;
  if (b >= heap->cnt)
   return;
  b_offset = heap->reqs[b].offset;
  c = b + 1;
  if (c < heap->cnt) {
   c_offset = heap->reqs[c].offset;
   if (c_offset < b_offset) {
    b = c;
    b_offset = c_offset;
   }
  }
  if (a_offset <= b_offset)
   return;
  tmp = heap->reqs[a];
  heap->reqs[a] = heap->reqs[b];
  heap->reqs[b] = tmp;
  a = b;
 }
}
