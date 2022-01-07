
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


typedef TYPE_1__* mstate ;
typedef TYPE_2__* mfastbinptr ;
typedef TYPE_2__* mchunkptr ;
typedef int Void_t ;
struct TYPE_30__ {scalar_t__ prev_size; struct TYPE_30__* bk; struct TYPE_30__* fd; } ;
struct TYPE_29__ {TYPE_2__* top; TYPE_2__** fastbins; scalar_t__ max_fast; } ;
typedef scalar_t__ INTERNAL_SIZE_T ;


 unsigned long FASTBIN_CONSOLIDATION_THRESHOLD ;
 scalar_t__ PREV_INUSE ;
 int assert (int) ;
 int check_chunk (TYPE_1__*,TYPE_2__*) ;
 int check_free_chunk (TYPE_1__*,TYPE_2__*) ;
 int check_inuse_chunk (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* chunk_at_offset (TYPE_2__*,long) ;
 int chunk_is_mmapped (TYPE_2__*) ;
 scalar_t__ chunksize (TYPE_2__*) ;
 int clear_inuse_bit_at_offset (TYPE_2__*,int ) ;
 size_t fastbin_index (scalar_t__) ;
 scalar_t__ have_fastchunks (TYPE_1__*) ;
 int inuse_bit_at_offset (TYPE_2__*,scalar_t__) ;
 int malloc_consolidate (TYPE_1__*) ;
 TYPE_2__* mem2chunk (int *) ;
 int prev_inuse (TYPE_2__*) ;
 int set_fastchunks (TYPE_1__*) ;
 int set_foot (TYPE_2__*,scalar_t__) ;
 int set_head (TYPE_2__*,scalar_t__) ;
 int unlink (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* unsorted_chunks (TYPE_1__*) ;

__attribute__((used)) static void
_int_free(mstate av, Void_t* mem)
{
  mchunkptr p;
  INTERNAL_SIZE_T size;
  mfastbinptr* fb;
  mchunkptr nextchunk;
  INTERNAL_SIZE_T nextsize;
  int nextinuse;
  INTERNAL_SIZE_T prevsize;
  mchunkptr bck;
  mchunkptr fwd;



  if (mem != 0) {
    p = mem2chunk(mem);
    size = chunksize(p);

    check_inuse_chunk(av, p);






    if ((unsigned long)(size) <= (unsigned long)(av->max_fast)
        ) {

      set_fastchunks(av);
      fb = &(av->fastbins[fastbin_index(size)]);
      p->fd = *fb;
      *fb = p;
    }





    else if (!chunk_is_mmapped(p)) {
      nextchunk = chunk_at_offset(p, size);
      nextsize = chunksize(nextchunk);
      assert(nextsize > 0);


      if (!prev_inuse(p)) {
        prevsize = p->prev_size;
        size += prevsize;
        p = chunk_at_offset(p, -((long) prevsize));
        unlink(p, bck, fwd);
      }

      if (nextchunk != av->top) {

        nextinuse = inuse_bit_at_offset(nextchunk, nextsize);


        if (!nextinuse) {
          unlink(nextchunk, bck, fwd);
          size += nextsize;
        } else
   clear_inuse_bit_at_offset(nextchunk, 0);







        bck = unsorted_chunks(av);
        fwd = bck->fd;
        p->bk = bck;
        p->fd = fwd;
        bck->fd = p;
        fwd->bk = p;

        set_head(p, size | PREV_INUSE);
        set_foot(p, size);

        check_free_chunk(av, p);
      }






      else {
        size += nextsize;
        set_head(p, size | PREV_INUSE);
        av->top = p;
        check_chunk(av, p);
      }
      if ((unsigned long)(size) >= FASTBIN_CONSOLIDATION_THRESHOLD) {
        if (have_fastchunks(av))
          malloc_consolidate(av);
      }
    }
  }
}
