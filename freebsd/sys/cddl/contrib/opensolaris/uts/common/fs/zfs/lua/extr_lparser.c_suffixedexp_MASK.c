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
typedef  int /*<<< orphan*/  expdesc ;
struct TYPE_10__ {int token; } ;
struct TYPE_11__ {int linenumber; TYPE_1__ t; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_2__ LexState ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
#define  TK_STRING 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10 (LexState *ls, expdesc *v) {
  /* suffixedexp ->
       primaryexp { '.' NAME | '[' exp ']' | ':' NAME funcargs | funcargs } */
  FuncState *fs = ls->fs;
  int line = ls->linenumber;
  FUNC8(ls, v);
  for (;;) {
    switch (ls->t.token) {
      case '.': {  /* fieldsel */
        FUNC1(ls, v);
        break;
      }
      case '[': {  /* `[' exp1 `]' */
        expdesc key;
        FUNC3(fs, v);
        FUNC9(ls, &key);
        FUNC5(fs, v, &key);
        break;
      }
      case ':': {  /* `:' NAME funcargs */
        expdesc key;
        FUNC7(ls);
        FUNC0(ls, &key);
        FUNC6(fs, v, &key);
        FUNC2(ls, v, line);
        break;
      }
      case '(': case TK_STRING: case '{': {  /* funcargs */
        FUNC4(fs, v);
        FUNC2(ls, v, line);
        break;
      }
      default: return;
    }
  }
}