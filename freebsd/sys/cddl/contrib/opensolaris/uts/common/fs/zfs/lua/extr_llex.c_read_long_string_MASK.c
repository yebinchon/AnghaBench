#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int current; int /*<<< orphan*/  buff; } ;
struct TYPE_13__ {int /*<<< orphan*/  ts; } ;
typedef  TYPE_1__ SemInfo ;
typedef  TYPE_2__ LexState ;

/* Variables and functions */
#define  EOZ 128 
 int /*<<< orphan*/  TK_EOS ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC11 (LexState *ls, SemInfo *seminfo, int sep) {
  FUNC9(ls);  /* skip 2nd `[' */
  if (FUNC0(ls))  /* string starts with a newline? */
    FUNC1(ls);  /* skip it */
  for (;;) {
    switch (ls->current) {
      case EOZ:
        FUNC2(ls, (seminfo) ? "unfinished long string" :
                                 "unfinished long comment", TK_EOS);
        break;  /* to avoid warnings */
      case ']': {
        if (FUNC10(ls) == sep) {
          FUNC9(ls);  /* skip 2nd `]' */
          goto endloop;
        }
        break;
      }
      case '\n': case '\r': {
        FUNC8(ls, '\n');
        FUNC1(ls);
        if (!seminfo) FUNC6(ls->buff);  /* avoid wasting space */
        break;
      }
      default: {
        if (seminfo) FUNC9(ls);
        else FUNC7(ls);
      }
    }
  } endloop:
  if (seminfo)
    seminfo->ts = FUNC3(ls, FUNC4(ls->buff) + (2 + sep),
                                     FUNC5(ls->buff) - 2*(2 + sep));
}