#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ gcstate; int /*<<< orphan*/  allweak; int /*<<< orphan*/  ephemeron; int /*<<< orphan*/  grayagain; } ;
typedef  TYPE_1__ global_State ;
struct TYPE_11__ {unsigned int sizearray; int /*<<< orphan*/ * array; } ;
typedef  TYPE_2__ Table ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 scalar_t__ GCSpropagate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12 (global_State *g, Table *h) {
  int marked = 0;  /* true if an object is marked in this traversal */
  int hasclears = 0;  /* true if table has white keys */
  int hasww = 0;  /* true if table has entry "white-key -> white-value" */
  Node *n, *limit = FUNC4(h);
  unsigned int i;
  /* traverse array part */
  for (i = 0; i < h->sizearray; i++) {
    if (FUNC11(&h->array[i])) {
      marked = 1;
      FUNC8(g, FUNC1(&h->array[i]));
    }
  }
  /* traverse hash part */
  for (n = FUNC3(h, 0); n < limit; n++) {
    FUNC0(n);
    if (FUNC10(FUNC5(n)))  /* entry is empty? */
      FUNC9(n);  /* remove it */
    else if (FUNC6(g, FUNC2(n))) {  /* key is not marked (yet)? */
      hasclears = 1;  /* table must be cleared */
      if (FUNC11(FUNC5(n)))  /* value not marked yet? */
        hasww = 1;  /* white-white entry */
    }
    else if (FUNC11(FUNC5(n))) {  /* value not marked yet? */
      marked = 1;
      FUNC8(g, FUNC1(FUNC5(n)));  /* mark it now */
    }
  }
  /* link table into proper list */
  if (g->gcstate == GCSpropagate)
    FUNC7(h, g->grayagain);  /* must retraverse it in atomic phase */
  else if (hasww)  /* table has white->white entries? */
    FUNC7(h, g->ephemeron);  /* have to propagate again */
  else if (hasclears)  /* table has white keys? */
    FUNC7(h, g->allweak);  /* may have to clean white keys */
  return marked;
}