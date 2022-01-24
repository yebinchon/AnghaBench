#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mstate ;
typedef  TYPE_2__* mchunkptr ;
typedef  TYPE_2__* mbinptr ;
struct TYPE_23__ {struct TYPE_23__* bk; struct TYPE_23__* fd; } ;
struct TYPE_22__ {scalar_t__ top; int max_fast; scalar_t__ max_system_mem; scalar_t__ system_mem; TYPE_2__** fastbins; } ;
typedef  unsigned long INTERNAL_SIZE_T ;

/* Variables and functions */
 scalar_t__ FIRST_SORTED_BIN_SIZE ; 
 int MALLOC_ALIGNMENT ; 
 int /*<<< orphan*/  MAX_FAST_SIZE ; 
 unsigned long MINSIZE ; 
 int NBINS ; 
 int NFASTBINS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int) ; 
 unsigned int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 unsigned long FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC7 (unsigned long) ; 
 unsigned int FUNC8 (TYPE_1__*,int) ; 
 int FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 TYPE_2__* FUNC12 (TYPE_2__*) ; 
 TYPE_2__* FUNC13 (TYPE_2__*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(mstate av)
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

  /* internal size_t must be no wider than pointer type */
  FUNC0(sizeof(INTERNAL_SIZE_T) <= sizeof(char*));

  /* alignment is a power of 2 */
  FUNC0((MALLOC_ALIGNMENT & (MALLOC_ALIGNMENT-1)) == 0);

  /* cannot run remaining checks until fully initialized */
  if (av->top == 0 || av->top == FUNC10(av))
    return;


  /* properties of fastbins */

  /* max_fast is in allowed range */
  FUNC0((av->max_fast & ~1) <= FUNC14(MAX_FAST_SIZE));

  max_fast_bin = FUNC7(av->max_fast);

  for (i = 0; i < NFASTBINS; ++i) {
    p = av->fastbins[i];

    /* all bins past max_fast are empty */
    if (i > max_fast_bin)
      FUNC0(p == 0);

    while (p != 0) {
      /* each chunk claims to be inuse */
      FUNC6(av, p);
      total += FUNC4(p);
      /* chunk belongs in this bin */
      FUNC0(FUNC7(FUNC4(p)) == i);
      p = p->fd;
    }
  }

  if (total != 0)
    FUNC0(FUNC9(av));
  else if (!FUNC9(av))
    FUNC0(total == 0);

  /* check normal bins */
  for (i = 1; i < NBINS; ++i) {
    b = FUNC1(av,i);

    /* binmap is accurate (except for bin 1 == unsorted_chunks) */
    if (i >= 2) {
      binbit = FUNC8(av,i);
      empty = FUNC12(b) == b;
      if (!binbit)
        FUNC0(empty);
      else if (!empty)
        FUNC0(binbit);
    }

    for (p = FUNC12(b); p != b; p = p->bk) {
      /* each chunk claims to be free */
      FUNC5(av, p);
      size = FUNC4(p);
      total += size;
      if (i >= 2) {
        /* chunk belongs in bin */
        idx = FUNC2(size);
        FUNC0(idx == (unsigned int)i);
        /* lists are sorted */
        if ((unsigned long) size >= (unsigned long)(FIRST_SORTED_BIN_SIZE)) {
	  FUNC0(p->bk == b ||
		 (unsigned long)FUNC4(p->bk) >=
		 (unsigned long)FUNC4(p));
	}
      }
      /* chunk is followed by a legal chain of inuse chunks */
      for (q = FUNC13(p);
           (q != av->top && FUNC11(q) &&
             (unsigned long)(FUNC4(q)) >= MINSIZE);
           q = FUNC13(q))
        FUNC6(av, q);
    }
  }

  /* top chunk is OK */
  FUNC3(av, av->top);

  /* sanity checks for statistics */


  FUNC0((unsigned long)(av->system_mem) <=
         (unsigned long)(av->max_system_mem));


}