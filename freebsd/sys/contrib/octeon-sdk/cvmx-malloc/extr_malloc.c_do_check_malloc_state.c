
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef TYPE_1__* mstate ;
typedef TYPE_2__* mchunkptr ;
typedef TYPE_2__* mbinptr ;
struct TYPE_23__ {struct TYPE_23__* bk; struct TYPE_23__* fd; } ;
struct TYPE_22__ {scalar_t__ top; int max_fast; scalar_t__ max_system_mem; scalar_t__ system_mem; TYPE_2__** fastbins; } ;
typedef unsigned long INTERNAL_SIZE_T ;


 scalar_t__ FIRST_SORTED_BIN_SIZE ;
 int MALLOC_ALIGNMENT ;
 int MAX_FAST_SIZE ;
 unsigned long MINSIZE ;
 int NBINS ;
 int NFASTBINS ;
 int assert (int) ;
 TYPE_2__* bin_at (TYPE_1__*,int) ;
 unsigned int bin_index (unsigned long) ;
 int check_chunk (TYPE_1__*,TYPE_2__*) ;
 unsigned long chunksize (TYPE_2__*) ;
 int do_check_free_chunk (TYPE_1__*,TYPE_2__*) ;
 int do_check_inuse_chunk (TYPE_1__*,TYPE_2__*) ;
 int fastbin_index (unsigned long) ;
 unsigned int get_binmap (TYPE_1__*,int) ;
 int have_fastchunks (TYPE_1__*) ;
 scalar_t__ initial_top (TYPE_1__*) ;
 scalar_t__ inuse (TYPE_2__*) ;
 TYPE_2__* last (TYPE_2__*) ;
 TYPE_2__* next_chunk (TYPE_2__*) ;
 int request2size (int ) ;

__attribute__((used)) static void do_check_malloc_state(mstate av)
{
  int i;
  mchunkptr p;
  mchunkptr q;
  mbinptr b;
  unsigned int binbit;
  int empty;
  unsigned int idx;
  INTERNAL_SIZE_T size;
  unsigned long total = 0;
  int max_fast_bin;


  assert(sizeof(INTERNAL_SIZE_T) <= sizeof(char*));


  assert((MALLOC_ALIGNMENT & (MALLOC_ALIGNMENT-1)) == 0);


  if (av->top == 0 || av->top == initial_top(av))
    return;





  assert((av->max_fast & ~1) <= request2size(MAX_FAST_SIZE));

  max_fast_bin = fastbin_index(av->max_fast);

  for (i = 0; i < NFASTBINS; ++i) {
    p = av->fastbins[i];


    if (i > max_fast_bin)
      assert(p == 0);

    while (p != 0) {

      do_check_inuse_chunk(av, p);
      total += chunksize(p);

      assert(fastbin_index(chunksize(p)) == i);
      p = p->fd;
    }
  }

  if (total != 0)
    assert(have_fastchunks(av));
  else if (!have_fastchunks(av))
    assert(total == 0);


  for (i = 1; i < NBINS; ++i) {
    b = bin_at(av,i);


    if (i >= 2) {
      binbit = get_binmap(av,i);
      empty = last(b) == b;
      if (!binbit)
        assert(empty);
      else if (!empty)
        assert(binbit);
    }

    for (p = last(b); p != b; p = p->bk) {

      do_check_free_chunk(av, p);
      size = chunksize(p);
      total += size;
      if (i >= 2) {

        idx = bin_index(size);
        assert(idx == (unsigned int)i);

        if ((unsigned long) size >= (unsigned long)(FIRST_SORTED_BIN_SIZE)) {
   assert(p->bk == b ||
   (unsigned long)chunksize(p->bk) >=
   (unsigned long)chunksize(p));
 }
      }

      for (q = next_chunk(p);
           (q != av->top && inuse(q) &&
             (unsigned long)(chunksize(q)) >= MINSIZE);
           q = next_chunk(q))
        do_check_inuse_chunk(av, q);
    }
  }


  check_chunk(av, av->top);




  assert((unsigned long)(av->system_mem) <=
         (unsigned long)(av->max_system_mem));


}
