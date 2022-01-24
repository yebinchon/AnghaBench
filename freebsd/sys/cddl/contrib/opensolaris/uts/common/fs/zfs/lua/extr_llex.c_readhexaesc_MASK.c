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
typedef  int /*<<< orphan*/  LexState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4 (LexState *ls) {
  int c[3], i;  /* keep input for error message */
  int r = 0;  /* result accumulator */
  c[0] = 'x';  /* for error message */
  for (i = 1; i < 3; i++) {  /* read two hexadecimal digits */
    c[i] = FUNC3(ls);
    if (!FUNC1(c[i]))
      FUNC0(ls, c, i + 1, "hexadecimal digit expected");
    r = (r << 4) + FUNC2(c[i]);
  }
  return r;
}