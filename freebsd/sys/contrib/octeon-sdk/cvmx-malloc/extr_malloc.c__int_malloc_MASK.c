#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mstate ;
typedef  TYPE_2__* mfastbinptr ;
typedef  TYPE_2__* mchunkptr ;
typedef  TYPE_2__* mbinptr ;
typedef  int /*<<< orphan*/  Void_t ;
struct TYPE_34__ {struct TYPE_34__* fd; struct TYPE_34__* bk; scalar_t__ size; } ;
struct TYPE_33__ {unsigned int* binmap; TYPE_2__* top; TYPE_2__* last_remainder; TYPE_2__** fastbins; scalar_t__ max_fast; } ;
typedef  unsigned long INTERNAL_SIZE_T ;

/* Variables and functions */
 unsigned int BINMAPSHIFT ; 
 unsigned int BINMAPSIZE ; 
 scalar_t__ FIRST_SORTED_BIN_SIZE ; 
 unsigned long MINSIZE ; 
 unsigned long PREV_INUSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (size_t,unsigned long) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (TYPE_2__*,unsigned long) ; 
 unsigned long FUNC7 (TYPE_2__*) ; 
 size_t FUNC8 (unsigned long) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 unsigned int FUNC10 (unsigned int) ; 
 unsigned int FUNC11 (unsigned int) ; 
 int FUNC12 (unsigned long) ; 
 void* FUNC13 (unsigned long) ; 
 TYPE_2__* FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 
 TYPE_2__* FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,unsigned long) ; 
 void* FUNC22 (unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC24 (TYPE_1__*) ; 

__attribute__((used)) static Void_t*
FUNC25(mstate av, size_t bytes)
{
  INTERNAL_SIZE_T nb;               /* normalized request size */
  unsigned int    idx;              /* associated bin index */
  mbinptr         bin;              /* associated bin */
  mfastbinptr*    fb;               /* associated fastbin */

  mchunkptr       victim;           /* inspected/selected chunk */
  INTERNAL_SIZE_T size;             /* its size */
  int             victim_index;     /* its bin index */

  mchunkptr       remainder;        /* remainder from a split */
  unsigned long   remainder_size;   /* its size */

  unsigned int    block;            /* bit map traverser */
  unsigned int    bit;              /* bit map traverser */
  unsigned int    map;              /* current word of binmap */

  mchunkptr       fwd;              /* misc temp for linking */
  mchunkptr       bck;              /* misc temp for linking */

  /*
    Convert request size to internal form by adding SIZE_SZ bytes
    overhead plus possibly more to obtain necessary alignment and/or
    to obtain a size of at least MINSIZE, the smallest allocatable
    size. Also, checked_request2size traps (returning 0) request sizes
    that are so large that they wrap around zero when padded and
    aligned.
  */


  FUNC4(bytes, nb);

  /*
    If the size qualifies as a fastbin, first check corresponding bin.
    This code is safe to execute even if av is not yet initialized, so we
    can try it without checking, which saves some time on this fast path.
  */

  if ((unsigned long)(nb) <= (unsigned long)(av->max_fast)) {
    fb = &(av->fastbins[(FUNC8(nb))]);
    if ( (victim = *fb) != 0) {
      *fb = victim->fd;
      FUNC3(av, victim, nb);
      FUNC18(victim, av);
      return FUNC5(victim);
    }
  }

  /*
    If a small request, check regular bin.  Since these "smallbins"
    hold one size each, no searching within bins is necessary.
    (For a large request, we need to wait until unsorted chunks are
    processed to find best fit. But for small ones, fits are exact
    anyway, so we can check now, which is faster.)
  */

  if (FUNC12(nb)) {
    idx = FUNC22(nb);
    bin = FUNC1(av,idx);

    if ( (victim = FUNC14(bin)) != bin) {
      if (victim == 0) /* initialization check */
        FUNC15(av);
      else {
        bck = victim->bk;
        FUNC21(victim, nb);
        bin->bk = bck;
        bck->fd = bin;

        FUNC18(victim, av);
        FUNC2(av, victim, nb);
        return FUNC5(victim);
      }
    }
  }

  /*
     If this is a large request, consolidate fastbins before continuing.
     While it might look excessive to kill all fastbins before
     even seeing if there is space available, this avoids
     fragmentation problems normally associated with fastbins.
     Also, in practice, programs tend to have runs of either small or
     large requests, but less often mixtures, so consolidation is not
     invoked all that often in most programs. And the programs that
     it is called frequently in otherwise tend to fragment.
  */

  else {
    idx = FUNC13(nb);
    if (FUNC9(av))
      FUNC15(av);
  }

  /*
    Process recently freed or remaindered chunks, taking one only if
    it is exact fit, or, if this a small request, the chunk is remainder from
    the most recent non-exact fit.  Place other traversed chunks in
    bins.  Note that this step is the only place in any routine where
    chunks are placed in bins.

    The outer loop here is needed because we might not realize until
    near the end of malloc that we should have consolidated, so must
    do so and retry. This happens at most once, and only when we would
    otherwise need to expand memory to service a "small" request.
  */

  for(;;) {

    while ( (victim = FUNC24(av)->bk) != FUNC24(av)) {
      bck = victim->bk;
      size = FUNC7(victim);

      /*
         If a small request, try to use last remainder if it is the
         only chunk in unsorted bin.  This helps promote locality for
         runs of consecutive small requests. This is the only
         exception to best-fit, and applies only when there is
         no exact fit for a small chunk.
      */

      if (FUNC12(nb) &&
          bck == FUNC24(av) &&
          victim == av->last_remainder &&
          (unsigned long)(size) > (unsigned long)(nb + MINSIZE)) {

        /* split and reattach remainder */
        remainder_size = size - nb;
        remainder = FUNC6(victim, nb);
        FUNC24(av)->bk = FUNC24(av)->fd = remainder;
        av->last_remainder = remainder;
        remainder->bk = remainder->fd = FUNC24(av);

        FUNC20(victim, nb | PREV_INUSE);
        FUNC20(remainder, remainder_size | PREV_INUSE);
        FUNC19(remainder, remainder_size);

        FUNC18(victim, av);
        FUNC2(av, victim, nb);
        return FUNC5(victim);
      }

      /* remove from unsorted list */
      FUNC24(av)->bk = bck;
      bck->fd = FUNC24(av);

      /* Take now instead of binning if exact fit */

      if (size == nb) {
        FUNC21(victim, size);
        FUNC18(victim, av);
        FUNC2(av, victim, nb);
        return FUNC5(victim);
      }

      /* place chunk in bin */

      if (FUNC12(size)) {
        victim_index = FUNC22(size);
        bck = FUNC1(av, victim_index);
        fwd = bck->fd;
      }
      else {
        victim_index = FUNC13(size);
        bck = FUNC1(av, victim_index);
        fwd = bck->fd;

        if (fwd != bck) {
          /* if smaller than smallest, place first */
          if ((unsigned long)(size) < (unsigned long)(bck->bk->size)) {
            fwd = bck;
            bck = bck->bk;
          }
          else if ((unsigned long)(size) >= 
                   (unsigned long)(FIRST_SORTED_BIN_SIZE)) {

            /* maintain large bins in sorted order */
            size |= PREV_INUSE; /* Or with inuse bit to speed comparisons */
            while ((unsigned long)(size) < (unsigned long)(fwd->size)) {
              fwd = fwd->fd;
	    }
            bck = fwd->bk;
          }
        }
      }

      FUNC16(av, victim_index);
      victim->bk = bck;
      victim->fd = fwd;
      fwd->bk = victim;
      bck->fd = victim;
    }

    /*
      If a large request, scan through the chunks of current bin in
      sorted order to find smallest that fits.  This is the only step
      where an unbounded number of chunks might be scanned without doing
      anything useful with them. However the lists tend to be short.
    */

    if (!FUNC12(nb)) {
      bin = FUNC1(av, idx);

      for (victim = FUNC14(bin); victim != bin; victim = victim->bk) {
	size = FUNC7(victim);

	if ((unsigned long)(size) >= (unsigned long)(nb)) {
	  remainder_size = size - nb;
	  FUNC23(victim, bck, fwd);

	  /* Exhaust */
	  if (remainder_size < MINSIZE)  {
	    FUNC21(victim, size);
        FUNC18(victim, av);
	    FUNC2(av, victim, nb);
	    return FUNC5(victim);
	  }
	  /* Split */
	  else {
	    remainder = FUNC6(victim, nb);
	    FUNC24(av)->bk = FUNC24(av)->fd = remainder;
	    remainder->bk = remainder->fd = FUNC24(av);
	    FUNC20(victim, nb | PREV_INUSE);
	    FUNC20(remainder, remainder_size | PREV_INUSE);
	    FUNC19(remainder, remainder_size);
        FUNC18(victim, av);
	    FUNC2(av, victim, nb);
	    return FUNC5(victim);
	  }
	}
      }
    }

    /*
      Search for a chunk by scanning bins, starting with next largest
      bin. This search is strictly by best-fit; i.e., the smallest
      (with ties going to approximately the least recently used) chunk
      that fits is selected.

      The bitmap avoids needing to check that most blocks are nonempty.
      The particular case of skipping all bins during warm-up phases
      when no chunks have been returned yet is faster than it might look.
    */

    ++idx;
    bin = FUNC1(av,idx);
    block = FUNC11(idx);
    map = av->binmap[block];
    bit = FUNC10(idx);

    for (;;) {

      /* Skip rest of block if there are no more set bits in this block.  */
      if (bit > map || bit == 0) {
        do {
          if (++block >= BINMAPSIZE)  /* out of bins */
            goto use_top;
        } while ( (map = av->binmap[block]) == 0);

        bin = FUNC1(av, (block << BINMAPSHIFT));
        bit = 1;
      }

      /* Advance to bin with set bit. There must be one. */
      while ((bit & map) == 0) {
        bin = FUNC17(bin);
        bit <<= 1;
        FUNC0(bit != 0);
      }

      /* Inspect the bin. It is likely to be non-empty */
      victim = FUNC14(bin);

      /*  If a false alarm (empty bin), clear the bit. */
      if (victim == bin) {
        av->binmap[block] = map &= ~bit; /* Write through */
        bin = FUNC17(bin);
        bit <<= 1;
      }

      else {
        size = FUNC7(victim);

        /*  We know the first chunk in this bin is big enough to use. */
        FUNC0((unsigned long)(size) >= (unsigned long)(nb));

        remainder_size = size - nb;

        /* unlink */
        bck = victim->bk;
        bin->bk = bck;
        bck->fd = bin;

        /* Exhaust */
        if (remainder_size < MINSIZE) {
          FUNC21(victim, size);
          FUNC18(victim, av);
          FUNC2(av, victim, nb);
          return FUNC5(victim);
        }

        /* Split */
        else {
          remainder = FUNC6(victim, nb);

          FUNC24(av)->bk = FUNC24(av)->fd = remainder;
          remainder->bk = remainder->fd = FUNC24(av);
          /* advertise as last remainder */
          if (FUNC12(nb))
            av->last_remainder = remainder;

          FUNC20(victim, nb | PREV_INUSE);
          FUNC20(remainder, remainder_size | PREV_INUSE);
          FUNC19(remainder, remainder_size);
          FUNC18(victim, av);
          FUNC2(av, victim, nb);
          return FUNC5(victim);
        }
      }
    }

  use_top:
    /*
      If large enough, split off the chunk bordering the end of memory
      (held in av->top). Note that this is in accord with the best-fit
      search rule.  In effect, av->top is treated as larger (and thus
      less well fitting) than any other available chunk since it can
      be extended to be as large as necessary (up to system
      limitations).

      We require that av->top always exists (i.e., has size >=
      MINSIZE) after initialization, so if it would otherwise be
      exhuasted by current request, it is replenished. (The main
      reason for ensuring it exists is that we may need MINSIZE space
      to put in fenceposts in sysmalloc.)
    */

    victim = av->top;
    size = FUNC7(victim);

    if ((unsigned long)(size) >= (unsigned long)(nb + MINSIZE)) {
      remainder_size = size - nb;
      remainder = FUNC6(victim, nb);
      av->top = remainder;
      FUNC20(victim, nb | PREV_INUSE);
      FUNC20(remainder, remainder_size | PREV_INUSE);

      FUNC18(victim, av);
      FUNC2(av, victim, nb);
      return FUNC5(victim);
    }

    /*
      If there is space available in fastbins, consolidate and retry,
      to possibly avoid expanding memory. This can occur only if nb is
      in smallbin range so we didn't consolidate upon entry.
    */

    else if (FUNC9(av)) {
      FUNC0(FUNC12(nb));
      FUNC15(av);
      idx = FUNC22(nb); /* restore original bin index */
    }

    /*
       Otherwise, relay to handle system-dependent cases
    */
    else
      return(NULL); // sysmalloc not supported
  }
}