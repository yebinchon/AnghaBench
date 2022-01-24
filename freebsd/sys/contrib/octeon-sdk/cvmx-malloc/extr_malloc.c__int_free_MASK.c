#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mstate ;
typedef  TYPE_2__* mfastbinptr ;
typedef  TYPE_2__* mchunkptr ;
typedef  int /*<<< orphan*/  Void_t ;
struct TYPE_30__ {scalar_t__ prev_size; struct TYPE_30__* bk; struct TYPE_30__* fd; } ;
struct TYPE_29__ {TYPE_2__* top; TYPE_2__** fastbins; scalar_t__ max_fast; } ;
typedef  scalar_t__ INTERNAL_SIZE_T ;

/* Variables and functions */
 unsigned long FASTBIN_CONSOLIDATION_THRESHOLD ; 
 scalar_t__ PREV_INUSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_2__*,long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC18 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC19(mstate av, Void_t* mem)
{
  mchunkptr       p;           /* chunk corresponding to mem */
  INTERNAL_SIZE_T size;        /* its size */
  mfastbinptr*    fb;          /* associated fastbin */
  mchunkptr       nextchunk;   /* next contiguous chunk */
  INTERNAL_SIZE_T nextsize;    /* its size */
  int             nextinuse;   /* true if nextchunk is used */
  INTERNAL_SIZE_T prevsize;    /* size of previous contiguous chunk */
  mchunkptr       bck;         /* misc temp for linking */
  mchunkptr       fwd;         /* misc temp for linking */


  /* free(0) has no effect */
  if (mem != 0) {
    p = FUNC12(mem);
    size = FUNC6(p);

    FUNC3(av, p);

    /*
      If eligible, place chunk on a fastbin so it can be found
      and used quickly in malloc.
    */

    if ((unsigned long)(size) <= (unsigned long)(av->max_fast)

#if TRIM_FASTBINS
        /*
           If TRIM_FASTBINS set, don't place chunks
           bordering top into fastbins
        */
        && (chunk_at_offset(p, size) != av->top)
#endif
        ) {

      FUNC14(av);
      fb = &(av->fastbins[FUNC8(size)]);
      p->fd = *fb;
      *fb = p;
    }

    /*
       Consolidate other non-mmapped chunks as they arrive.
    */

    else if (!FUNC5(p)) {
      nextchunk = FUNC4(p, size);
      nextsize = FUNC6(nextchunk);
      FUNC0(nextsize > 0);

      /* consolidate backward */
      if (!FUNC13(p)) {
        prevsize = p->prev_size;
        size += prevsize;
        p = FUNC4(p, -((long) prevsize));
        FUNC17(p, bck, fwd);
      }

      if (nextchunk != av->top) {
        /* get and clear inuse bit */
        nextinuse = FUNC10(nextchunk, nextsize);

        /* consolidate forward */
        if (!nextinuse) {
          FUNC17(nextchunk, bck, fwd);
          size += nextsize;
        } else
	  FUNC7(nextchunk, 0);

        /*
          Place the chunk in unsorted chunk list. Chunks are
          not placed into regular bins until after they have
          been given one chance to be used in malloc.
        */

        bck = FUNC18(av);
        fwd = bck->fd;
        p->bk = bck;
        p->fd = fwd;
        bck->fd = p;
        fwd->bk = p;

        FUNC16(p, size | PREV_INUSE);
        FUNC15(p, size);

        FUNC2(av, p);
      }

      /*
         If the chunk borders the current high end of memory,
         consolidate into top
      */

      else {
        size += nextsize;
        FUNC16(p, size | PREV_INUSE);
        av->top = p;
        FUNC1(av, p);
      }

      /*
        If freeing a large space, consolidate possibly-surrounding
        chunks. Then, if the total unused topmost memory exceeds trim
        threshold, ask malloc_trim to reduce top.

        Unless max_fast is 0, we don't know if there are fastbins
        bordering top, so we cannot tell for sure whether threshold
        has been reached unless fastbins are consolidated.  But we
        don't want to consolidate on each free.  As a compromise,
        consolidation is performed if FASTBIN_CONSOLIDATION_THRESHOLD
        is reached.
      */

      if ((unsigned long)(size) >= FASTBIN_CONSOLIDATION_THRESHOLD) {
        if (FUNC9(av))
          FUNC11(av);
      }
    }
  }
}