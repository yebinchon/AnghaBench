#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  expdesc ;
struct TYPE_6__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ LexState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5 (LexState *ls, int line) {
  /* funcstat -> FUNCTION funcname body */
  int ismethod;
  expdesc v, b;
  FUNC4(ls);  /* skip FUNCTION */
  ismethod = FUNC1(ls, &v);
  FUNC0(ls, &b, ismethod, line);
  FUNC3(ls->fs, &v, &b);
  FUNC2(ls->fs, line);  /* definition `happens' in the first line */
}