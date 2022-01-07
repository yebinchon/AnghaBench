
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* mstate ;
typedef scalar_t__ mchunkptr ;
typedef int Void_t ;
struct TYPE_8__ {scalar_t__ top; } ;
typedef unsigned long INTERNAL_SIZE_T ;


 unsigned long MALLOC_ALIGN_MASK ;
 int MALLOC_COPY (unsigned long*,unsigned long*,unsigned long) ;
 int MALLOC_FAILURE_ACTION ;
 unsigned long MINSIZE ;
 unsigned long PREV_INUSE ;
 unsigned long SIZE_SZ ;
 int _int_free (TYPE_1__*,int *) ;
 int * _int_malloc (TYPE_1__*,unsigned long) ;
 int assert (int) ;
 int check_inuse_chunk (TYPE_1__*,scalar_t__) ;
 int check_malloc_state (TYPE_1__*) ;
 int checked_request2size (size_t,unsigned long) ;
 int * chunk2mem (scalar_t__) ;
 void* chunk_at_offset (scalar_t__,unsigned long) ;
 unsigned long chunksize (scalar_t__) ;
 int inuse (scalar_t__) ;
 scalar_t__ mem2chunk (int *) ;
 int set_arena_for_chunk (scalar_t__,TYPE_1__*) ;
 int set_head (scalar_t__,unsigned long) ;
 int set_head_size (scalar_t__,unsigned long) ;
 int set_inuse_bit_at_offset (scalar_t__,unsigned long) ;
 int unlink (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static Void_t*
_int_realloc(mstate av, Void_t* oldmem, size_t bytes)
{
  INTERNAL_SIZE_T nb;

  mchunkptr oldp;
  INTERNAL_SIZE_T oldsize;

  mchunkptr newp;
  INTERNAL_SIZE_T newsize;
  Void_t* newmem;

  mchunkptr next;

  mchunkptr remainder;
  unsigned long remainder_size;

  mchunkptr bck;
  mchunkptr fwd;

  unsigned long copysize;
  unsigned int ncopies;
  INTERNAL_SIZE_T* s;
  INTERNAL_SIZE_T* d;
  if (oldmem == 0) return _int_malloc(av, bytes);

  checked_request2size(bytes, nb);

  oldp = mem2chunk(oldmem);
  oldsize = chunksize(oldp);

  check_inuse_chunk(av, oldp);


  if (1) {

    if ((unsigned long)(oldsize) >= (unsigned long)(nb)) {

      newp = oldp;
      newsize = oldsize;
    }

    else {
      next = chunk_at_offset(oldp, oldsize);


      if (next == av->top &&
          (unsigned long)(newsize = oldsize + chunksize(next)) >=
          (unsigned long)(nb + MINSIZE)) {
        set_head_size(oldp, nb );
        av->top = chunk_at_offset(oldp, nb);
        set_head(av->top, (newsize - nb) | PREV_INUSE);
     check_inuse_chunk(av, oldp);
        set_arena_for_chunk(oldp, av);
        return chunk2mem(oldp);
      }


      else if (next != av->top &&
               !inuse(next) &&
               (unsigned long)(newsize = oldsize + chunksize(next)) >=
               (unsigned long)(nb)) {
        newp = oldp;
        unlink(next, bck, fwd);
      }


      else {
        newmem = _int_malloc(av, nb - MALLOC_ALIGN_MASK);
        if (newmem == 0)
          return 0;

        newp = mem2chunk(newmem);
        newsize = chunksize(newp);




        if (newp == next) {
          newsize += oldsize;
          newp = oldp;
        }
        else {






          copysize = oldsize - SIZE_SZ;
          s = (INTERNAL_SIZE_T*)(oldmem);
          d = (INTERNAL_SIZE_T*)(newmem);
          ncopies = copysize / sizeof(INTERNAL_SIZE_T);
          assert(ncopies >= 3);

          if (ncopies > 9)
            MALLOC_COPY(d, s, copysize);

          else {
            *(d+0) = *(s+0);
            *(d+1) = *(s+1);
            *(d+2) = *(s+2);
            if (ncopies > 4) {
              *(d+3) = *(s+3);
              *(d+4) = *(s+4);
              if (ncopies > 6) {
                *(d+5) = *(s+5);
                *(d+6) = *(s+6);
                if (ncopies > 8) {
                  *(d+7) = *(s+7);
                  *(d+8) = *(s+8);
                }
              }
            }
          }

          _int_free(av, oldmem);
          set_arena_for_chunk(newp, av);
          check_inuse_chunk(av, newp);
          return chunk2mem(newp);
        }
      }
    }



    assert((unsigned long)(newsize) >= (unsigned long)(nb));

    remainder_size = newsize - nb;

    if (remainder_size < MINSIZE) {
      set_head_size(newp, newsize);
      set_inuse_bit_at_offset(newp, newsize);
    }
    else {
      remainder = chunk_at_offset(newp, nb);
      set_head_size(newp, nb );
      set_head(remainder, remainder_size | PREV_INUSE );

      set_inuse_bit_at_offset(remainder, remainder_size);
      set_arena_for_chunk(remainder, av);
      _int_free(av, chunk2mem(remainder));
    }

    set_arena_for_chunk(newp, av);
    check_inuse_chunk(av, newp);
    return chunk2mem(newp);
  }





  else {

    check_malloc_state(av);
    MALLOC_FAILURE_ACTION;
    return 0;
  }
}
