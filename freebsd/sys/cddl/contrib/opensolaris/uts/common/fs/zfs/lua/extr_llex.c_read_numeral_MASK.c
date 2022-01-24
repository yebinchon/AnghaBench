#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int current; int /*<<< orphan*/  buff; int /*<<< orphan*/  decpoint; } ;
struct TYPE_11__ {int /*<<< orphan*/  r; } ;
typedef  TYPE_1__ SemInfo ;
typedef  TYPE_2__ LexState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC9 (LexState *ls, SemInfo *seminfo) {
  const char *expo = "Ee";
  int first = ls->current;
  FUNC5(FUNC3(ls->current));
  FUNC7(ls);
  if (first == '0' && FUNC2(ls, "Xx"))  /* hexadecimal? */
    expo = "Pp";
  for (;;) {
    if (FUNC2(ls, expo))  /* exponent part? */
      FUNC2(ls, "+-");  /* optional exponent sign */
    if (FUNC4(ls->current) || ls->current == '.')
      FUNC7(ls);
    else  break;
  }
  FUNC6(ls, '\0');
  FUNC1(ls, '.', ls->decpoint);  /* follow locale for decimal point */
  if (!FUNC0(ls->buff, &seminfo->r))  /* format error? */
    FUNC8(ls, seminfo); /* try to update decimal point separator */
}