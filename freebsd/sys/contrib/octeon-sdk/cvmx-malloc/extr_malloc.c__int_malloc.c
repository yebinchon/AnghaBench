
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_1__ ;


typedef TYPE_1__* mstate ;
typedef TYPE_2__* mfastbinptr ;
typedef TYPE_2__* mchunkptr ;
typedef TYPE_2__* mbinptr ;
typedef int Void_t ;
struct TYPE_34__ {struct TYPE_34__* fd; struct TYPE_34__* bk; scalar_t__ size; } ;
struct TYPE_33__ {unsigned int* binmap; TYPE_2__* top; TYPE_2__* last_remainder; TYPE_2__** fastbins; scalar_t__ max_fast; } ;
typedef unsigned long INTERNAL_SIZE_T ;


 unsigned int BINMAPSHIFT ;
 unsigned int BINMAPSIZE ;
 scalar_t__ FIRST_SORTED_BIN_SIZE ;
 unsigned long MINSIZE ;
 unsigned long PREV_INUSE ;
 int assert (int) ;
 TYPE_2__* bin_at (TYPE_1__*,unsigned int) ;
 int check_malloced_chunk (TYPE_1__*,TYPE_2__*,unsigned long) ;
 int check_remalloced_chunk (TYPE_1__*,TYPE_2__*,unsigned long) ;
 int checked_request2size (size_t,unsigned long) ;
 int * chunk2mem (TYPE_2__*) ;
 TYPE_2__* chunk_at_offset (TYPE_2__*,unsigned long) ;
 unsigned long chunksize (TYPE_2__*) ;
 size_t fastbin_index (unsigned long) ;
 scalar_t__ have_fastchunks (TYPE_1__*) ;
 unsigned int idx2bit (unsigned int) ;
 unsigned int idx2block (unsigned int) ;
 int in_smallbin_range (unsigned long) ;
 void* largebin_index (unsigned long) ;
 TYPE_2__* last (TYPE_2__*) ;
 int malloc_consolidate (TYPE_1__*) ;
 int mark_bin (TYPE_1__*,int) ;
 TYPE_2__* next_bin (TYPE_2__*) ;
 int set_arena_for_chunk (TYPE_2__*,TYPE_1__*) ;
 int set_foot (TYPE_2__*,unsigned long) ;
 int set_head (TYPE_2__*,unsigned long) ;
 int set_inuse_bit_at_offset (TYPE_2__*,unsigned long) ;
 void* smallbin_index (unsigned long) ;
 int unlink (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* unsorted_chunks (TYPE_1__*) ;

__attribute__((used)) static Void_t*
_int_malloc(mstate av, size_t bytes)
{
  INTERNAL_SIZE_T nb;
  unsigned int idx;
  mbinptr bin;
  mfastbinptr* fb;

  mchunkptr victim;
  INTERNAL_SIZE_T size;
  int victim_index;

  mchunkptr remainder;
  unsigned long remainder_size;

  unsigned int block;
  unsigned int bit;
  unsigned int map;

  mchunkptr fwd;
  mchunkptr bck;
  checked_request2size(bytes, nb);







  if ((unsigned long)(nb) <= (unsigned long)(av->max_fast)) {
    fb = &(av->fastbins[(fastbin_index(nb))]);
    if ( (victim = *fb) != 0) {
      *fb = victim->fd;
      check_remalloced_chunk(av, victim, nb);
      set_arena_for_chunk(victim, av);
      return chunk2mem(victim);
    }
  }
  if (in_smallbin_range(nb)) {
    idx = smallbin_index(nb);
    bin = bin_at(av,idx);

    if ( (victim = last(bin)) != bin) {
      if (victim == 0)
        malloc_consolidate(av);
      else {
        bck = victim->bk;
        set_inuse_bit_at_offset(victim, nb);
        bin->bk = bck;
        bck->fd = bin;

        set_arena_for_chunk(victim, av);
        check_malloced_chunk(av, victim, nb);
        return chunk2mem(victim);
      }
    }
  }
  else {
    idx = largebin_index(nb);
    if (have_fastchunks(av))
      malloc_consolidate(av);
  }
  for(;;) {

    while ( (victim = unsorted_chunks(av)->bk) != unsorted_chunks(av)) {
      bck = victim->bk;
      size = chunksize(victim);
      if (in_smallbin_range(nb) &&
          bck == unsorted_chunks(av) &&
          victim == av->last_remainder &&
          (unsigned long)(size) > (unsigned long)(nb + MINSIZE)) {


        remainder_size = size - nb;
        remainder = chunk_at_offset(victim, nb);
        unsorted_chunks(av)->bk = unsorted_chunks(av)->fd = remainder;
        av->last_remainder = remainder;
        remainder->bk = remainder->fd = unsorted_chunks(av);

        set_head(victim, nb | PREV_INUSE);
        set_head(remainder, remainder_size | PREV_INUSE);
        set_foot(remainder, remainder_size);

        set_arena_for_chunk(victim, av);
        check_malloced_chunk(av, victim, nb);
        return chunk2mem(victim);
      }


      unsorted_chunks(av)->bk = bck;
      bck->fd = unsorted_chunks(av);



      if (size == nb) {
        set_inuse_bit_at_offset(victim, size);
        set_arena_for_chunk(victim, av);
        check_malloced_chunk(av, victim, nb);
        return chunk2mem(victim);
      }



      if (in_smallbin_range(size)) {
        victim_index = smallbin_index(size);
        bck = bin_at(av, victim_index);
        fwd = bck->fd;
      }
      else {
        victim_index = largebin_index(size);
        bck = bin_at(av, victim_index);
        fwd = bck->fd;

        if (fwd != bck) {

          if ((unsigned long)(size) < (unsigned long)(bck->bk->size)) {
            fwd = bck;
            bck = bck->bk;
          }
          else if ((unsigned long)(size) >=
                   (unsigned long)(FIRST_SORTED_BIN_SIZE)) {


            size |= PREV_INUSE;
            while ((unsigned long)(size) < (unsigned long)(fwd->size)) {
              fwd = fwd->fd;
     }
            bck = fwd->bk;
          }
        }
      }

      mark_bin(av, victim_index);
      victim->bk = bck;
      victim->fd = fwd;
      fwd->bk = victim;
      bck->fd = victim;
    }
    if (!in_smallbin_range(nb)) {
      bin = bin_at(av, idx);

      for (victim = last(bin); victim != bin; victim = victim->bk) {
 size = chunksize(victim);

 if ((unsigned long)(size) >= (unsigned long)(nb)) {
   remainder_size = size - nb;
   unlink(victim, bck, fwd);


   if (remainder_size < MINSIZE) {
     set_inuse_bit_at_offset(victim, size);
        set_arena_for_chunk(victim, av);
     check_malloced_chunk(av, victim, nb);
     return chunk2mem(victim);
   }

   else {
     remainder = chunk_at_offset(victim, nb);
     unsorted_chunks(av)->bk = unsorted_chunks(av)->fd = remainder;
     remainder->bk = remainder->fd = unsorted_chunks(av);
     set_head(victim, nb | PREV_INUSE);
     set_head(remainder, remainder_size | PREV_INUSE);
     set_foot(remainder, remainder_size);
        set_arena_for_chunk(victim, av);
     check_malloced_chunk(av, victim, nb);
     return chunk2mem(victim);
   }
 }
      }
    }
    ++idx;
    bin = bin_at(av,idx);
    block = idx2block(idx);
    map = av->binmap[block];
    bit = idx2bit(idx);

    for (;;) {


      if (bit > map || bit == 0) {
        do {
          if (++block >= BINMAPSIZE)
            goto use_top;
        } while ( (map = av->binmap[block]) == 0);

        bin = bin_at(av, (block << BINMAPSHIFT));
        bit = 1;
      }


      while ((bit & map) == 0) {
        bin = next_bin(bin);
        bit <<= 1;
        assert(bit != 0);
      }


      victim = last(bin);


      if (victim == bin) {
        av->binmap[block] = map &= ~bit;
        bin = next_bin(bin);
        bit <<= 1;
      }

      else {
        size = chunksize(victim);


        assert((unsigned long)(size) >= (unsigned long)(nb));

        remainder_size = size - nb;


        bck = victim->bk;
        bin->bk = bck;
        bck->fd = bin;


        if (remainder_size < MINSIZE) {
          set_inuse_bit_at_offset(victim, size);
          set_arena_for_chunk(victim, av);
          check_malloced_chunk(av, victim, nb);
          return chunk2mem(victim);
        }


        else {
          remainder = chunk_at_offset(victim, nb);

          unsorted_chunks(av)->bk = unsorted_chunks(av)->fd = remainder;
          remainder->bk = remainder->fd = unsorted_chunks(av);

          if (in_smallbin_range(nb))
            av->last_remainder = remainder;

          set_head(victim, nb | PREV_INUSE);
          set_head(remainder, remainder_size | PREV_INUSE);
          set_foot(remainder, remainder_size);
          set_arena_for_chunk(victim, av);
          check_malloced_chunk(av, victim, nb);
          return chunk2mem(victim);
        }
      }
    }

  use_top:
    victim = av->top;
    size = chunksize(victim);

    if ((unsigned long)(size) >= (unsigned long)(nb + MINSIZE)) {
      remainder_size = size - nb;
      remainder = chunk_at_offset(victim, nb);
      av->top = remainder;
      set_head(victim, nb | PREV_INUSE);
      set_head(remainder, remainder_size | PREV_INUSE);

      set_arena_for_chunk(victim, av);
      check_malloced_chunk(av, victim, nb);
      return chunk2mem(victim);
    }







    else if (have_fastchunks(av)) {
      assert(in_smallbin_range(nb));
      malloc_consolidate(av);
      idx = smallbin_index(nb);
    }




    else
      return(((void*)0));
  }
}
