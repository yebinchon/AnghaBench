#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mstate ;
typedef  scalar_t__ mchunkptr ;
typedef  int /*<<< orphan*/  Void_t ;
struct TYPE_8__ {scalar_t__ top; } ;
typedef  unsigned long INTERNAL_SIZE_T ;

/* Variables and functions */
 unsigned long MALLOC_ALIGN_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,unsigned long*,unsigned long) ; 
 int /*<<< orphan*/  MALLOC_FAILURE_ACTION ; 
 unsigned long MINSIZE ; 
 unsigned long PREV_INUSE ; 
 unsigned long SIZE_SZ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (size_t,unsigned long) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__) ; 
 void* FUNC8 (scalar_t__,unsigned long) ; 
 unsigned long FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static Void_t*
FUNC17(mstate av, Void_t* oldmem, size_t bytes)
{
  INTERNAL_SIZE_T  nb;              /* padded request size */

  mchunkptr        oldp;            /* chunk corresponding to oldmem */
  INTERNAL_SIZE_T  oldsize;         /* its size */

  mchunkptr        newp;            /* chunk to return */
  INTERNAL_SIZE_T  newsize;         /* its size */
  Void_t*          newmem;          /* corresponding user mem */

  mchunkptr        next;            /* next contiguous chunk after oldp */

  mchunkptr        remainder;       /* extra space at end of newp */
  unsigned long    remainder_size;  /* its size */

  mchunkptr        bck;             /* misc temp for linking */
  mchunkptr        fwd;             /* misc temp for linking */

  unsigned long    copysize;        /* bytes to copy */
  unsigned int     ncopies;         /* INTERNAL_SIZE_T words to copy */
  INTERNAL_SIZE_T* s;               /* copy source */
  INTERNAL_SIZE_T* d;               /* copy destination */


#if REALLOC_ZERO_BYTES_FREES
  if (bytes == 0) {
    _int_free(av, oldmem);
    return 0;
  }
#endif

  /* realloc of null is supposed to be same as malloc */
  if (oldmem == 0) return FUNC2(av, bytes);

  FUNC6(bytes, nb);

  oldp    = FUNC11(oldmem);
  oldsize = FUNC9(oldp);

  FUNC4(av, oldp);

  // force to act like not mmapped
  if (1) {

    if ((unsigned long)(oldsize) >= (unsigned long)(nb)) {
      /* already big enough; split below */
      newp = oldp;
      newsize = oldsize;
    }

    else {
      next = FUNC8(oldp, oldsize);

      /* Try to expand forward into top */
      if (next == av->top &&
          (unsigned long)(newsize = oldsize + FUNC9(next)) >=
          (unsigned long)(nb + MINSIZE)) {
        FUNC14(oldp, nb );
        av->top = FUNC8(oldp, nb);
        FUNC13(av->top, (newsize - nb) | PREV_INUSE);
    	FUNC4(av, oldp);
        FUNC12(oldp, av);
        return FUNC7(oldp);
      }

      /* Try to expand forward into next chunk;  split off remainder below */
      else if (next != av->top &&
               !FUNC10(next) &&
               (unsigned long)(newsize = oldsize + FUNC9(next)) >=
               (unsigned long)(nb)) {
        newp = oldp;
        FUNC16(next, bck, fwd);
      }

      /* allocate, copy, free */
      else {
        newmem = FUNC2(av, nb - MALLOC_ALIGN_MASK);
        if (newmem == 0)
          return 0; /* propagate failure */

        newp = FUNC11(newmem);
        newsize = FUNC9(newp);

        /*
          Avoid copy if newp is next chunk after oldp.
        */
        if (newp == next) {
          newsize += oldsize;
          newp = oldp;
        }
        else {
          /*
            Unroll copy of <= 36 bytes (72 if 8byte sizes)
            We know that contents have an odd number of
            INTERNAL_SIZE_T-sized words; minimally 3.
          */

          copysize = oldsize - SIZE_SZ;
          s = (INTERNAL_SIZE_T*)(oldmem);
          d = (INTERNAL_SIZE_T*)(newmem);
          ncopies = copysize / sizeof(INTERNAL_SIZE_T);
          FUNC3(ncopies >= 3);

          if (ncopies > 9)
            FUNC0(d, s, copysize);

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

          FUNC1(av, oldmem);
          FUNC12(newp, av);
          FUNC4(av, newp);
          return FUNC7(newp);
        }
      }
    }

    /* If possible, free extra space in old or extended chunk */

    FUNC3((unsigned long)(newsize) >= (unsigned long)(nb));

    remainder_size = newsize - nb;

    if (remainder_size < MINSIZE) { /* not enough extra to split off */
      FUNC14(newp, newsize);
      FUNC15(newp, newsize);
    }
    else { /* split remainder */
      remainder = FUNC8(newp, nb);
      FUNC14(newp, nb );
      FUNC13(remainder, remainder_size | PREV_INUSE );
      /* Mark remainder as inuse so free() won't complain */
      FUNC15(remainder, remainder_size);
      FUNC12(remainder, av);
      FUNC1(av, FUNC7(remainder));
    }

    FUNC12(newp, av);
    FUNC4(av, newp);
    return FUNC7(newp);
  }

  /*
    Handle mmap cases
  */

  else {
    /* If !HAVE_MMAP, but chunk_is_mmapped, user must have overwritten mem */
    FUNC5(av);
    MALLOC_FAILURE_ACTION;
    return 0;
  }
}