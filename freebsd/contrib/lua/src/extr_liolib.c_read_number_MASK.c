#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {size_t n; char* buff; int /*<<< orphan*/ * f; int /*<<< orphan*/  c; } ;
typedef  TYPE_1__ RN ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10 (lua_State *L, FILE *f) {
  RN rn;
  int count = 0;
  int hex = 0;
  char decp[2];
  rn.f = f; rn.n = 0;
  decp[0] = FUNC4();  /* get decimal point from locale */
  decp[1] = '.';  /* always accept a dot */
  FUNC2(rn.f);
  do { rn.c = FUNC1(rn.f); } while (FUNC0(rn.c));  /* skip spaces */
  FUNC8(&rn, "-+");  /* optional signal */
  if (FUNC8(&rn, "00")) {
    if (FUNC8(&rn, "xX")) hex = 1;  /* numeral is hexadecimal */
    else count = 1;  /* count initial '0' as a valid digit */
  }
  count += FUNC7(&rn, hex);  /* integral part */
  if (FUNC8(&rn, decp))  /* decimal point? */
    count += FUNC7(&rn, hex);  /* fractional part */
  if (count > 0 && FUNC8(&rn, (hex ? "pP" : "eE"))) {  /* exponent mark? */
    FUNC8(&rn, "-+");  /* exponent signal */
    FUNC7(&rn, 0);  /* exponent digits */
  }
  FUNC9(rn.c, rn.f);  /* unread look-ahead char */
  FUNC3(rn.f);
  rn.buff[rn.n] = '\0';  /* finish string */
  if (FUNC6(L, rn.buff))  /* is this a valid number? */
    return 1;  /* ok */
  else {  /* invalid format */
   FUNC5(L);  /* "result" to be removed */
   return 0;  /* read fails */
  }
}