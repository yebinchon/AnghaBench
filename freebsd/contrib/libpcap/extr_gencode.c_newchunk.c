
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct chunk {size_t n_left; int * m; } ;
struct TYPE_4__ {size_t cur_chunk; struct chunk* chunks; } ;
typedef TYPE_1__ compiler_state_t ;


 size_t ALIGN (size_t) ;
 int CHUNK0SIZE ;
 int NCHUNKS ;
 int bpf_error (TYPE_1__*,char*) ;
 scalar_t__ malloc (size_t) ;
 int memset (char*,int ,size_t) ;

__attribute__((used)) static void *
newchunk(compiler_state_t *cstate, size_t n)
{
 struct chunk *cp;
 int k;
 size_t size;



 n = (n + sizeof(long) - 1) & ~(sizeof(long) - 1);





 cp = &cstate->chunks[cstate->cur_chunk];
 if (n > cp->n_left) {
  ++cp;
  k = ++cstate->cur_chunk;
  if (k >= NCHUNKS)
   bpf_error(cstate, "out of memory");
  size = CHUNK0SIZE << k;
  cp->m = (void *)malloc(size);
  if (cp->m == ((void*)0))
   bpf_error(cstate, "out of memory");
  memset((char *)cp->m, 0, size);
  cp->n_left = size;
  if (n > size)
   bpf_error(cstate, "out of memory");
 }
 cp->n_left -= n;
 return (void *)((char *)cp->m + cp->n_left);
}
