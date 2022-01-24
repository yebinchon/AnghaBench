#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
struct TYPE_15__ {int top; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_16__ {size_t len; } ;
struct TYPE_14__ {int /*<<< orphan*/  buff; } ;
typedef  int StkId ;

/* Variables and functions */
 TYPE_12__* FUNC0 (TYPE_1__*) ; 
 int MAX_SIZET ; 
 int /*<<< orphan*/  TM_CONCAT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,size_t) ; 
 char* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int) ; 
 TYPE_2__* FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 

void FUNC15 (lua_State *L, int total) {
  FUNC6(total >= 2);
  do {
    StkId top = L->top;
    int n = 2;  /* number of elements handled in this pass (at least 2) */
    if (!(FUNC14(top-2) || FUNC13(top-2)) || !FUNC11(L, top-1)) {
      if (!FUNC1(L, top-2, top-1, top-2, TM_CONCAT))
        FUNC2(L, top-2, top-1);
    }
    else if (FUNC12(top-1)->len == 0)  /* second operand is empty? */
      (void)FUNC11(L, top - 2);  /* result is first operand */
    else if (FUNC14(top-2) && FUNC12(top-2)->len == 0) {
      FUNC8(L, top - 2, top - 1);  /* result is second op. */
    }
    else {
      /* at least two non-empty string values; get as many as possible */
      size_t tl = FUNC12(top-1)->len;
      char *buffer;
      int i;
      /* collect total length */
      for (i = 1; i < total && FUNC11(L, top-i-1); i++) {
        size_t l = FUNC12(top-i-1)->len;
        if (l >= (MAX_SIZET/sizeof(char)) - tl)
          FUNC3(L, "string length overflow");
        tl += l;
      }
      buffer = FUNC5(L, &FUNC0(L)->buff, tl);
      tl = 0;
      n = i;
      do {  /* concat all strings */
        size_t l = FUNC12(top-i)->len;
        FUNC7(buffer+tl, FUNC10(top-i), l * sizeof(char));
        tl += l;
      } while (--i > 0);
      FUNC9(L, top-n, FUNC4(L, buffer, tl));
    }
    total -= n-1;  /* got 'n' strings to create 1 new */
    L->top -= n-1;  /* popped 'n' strings and pushed one */
  } while (total > 1);  /* repeat until only 1 result left */
}