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
typedef  scalar_t__ StkId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 size_t FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3 (StkId top, int n, char *buff) {
  size_t tl = 0;  /* size already copied */
  do {
    size_t l = FUNC2(top - n);  /* length of string being copied */
    FUNC0(buff + tl, FUNC1(top - n), l * sizeof(char));
    tl += l;
  } while (--n > 0);
}