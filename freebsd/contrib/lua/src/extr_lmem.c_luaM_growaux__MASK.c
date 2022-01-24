#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int MINSIZEARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,void*,int,int,size_t) ; 

void *FUNC2 (lua_State *L, void *block, int *size, size_t size_elems,
                     int limit, const char *what) {
  void *newblock;
  int newsize;
  if (*size >= limit/2) {  /* cannot double it? */
    if (*size >= limit)  /* cannot grow even a little? */
      FUNC0(L, "too many %s (limit is %d)", what, limit);
    newsize = limit;  /* still have at least one free place */
  }
  else {
    newsize = (*size)*2;
    if (newsize < MINSIZEARRAY)
      newsize = MINSIZEARRAY;  /* minimum size */
  }
  newblock = FUNC1(L, block, *size, newsize, size_elems);
  *size = newsize;  /* update only when everything else is OK */
  return newblock;
}