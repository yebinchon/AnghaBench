#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  nactvar; TYPE_2__* f; } ;
struct TYPE_13__ {char token; } ;
struct TYPE_15__ {TYPE_1__ t; TYPE_4__* fs; } ;
struct TYPE_14__ {int is_vararg; int /*<<< orphan*/  numparams; } ;
typedef  TYPE_2__ Proto ;
typedef  TYPE_3__ LexState ;
typedef  TYPE_4__ FuncState ;

/* Variables and functions */
#define  TK_DOTS 129 
#define  TK_NAME 128 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,char) ; 

__attribute__((used)) static void FUNC8 (LexState *ls) {
  /* parlist -> [ param { ',' param } ] */
  FuncState *fs = ls->fs;
  Proto *f = fs->f;
  int nparams = 0;
  f->is_vararg = 0;
  if (ls->t.token != ')') {  /* is 'parlist' not empty? */
    do {
      switch (ls->t.token) {
        case TK_NAME: {  /* param -> NAME */
          FUNC5(ls, FUNC6(ls));
          nparams++;
          break;
        }
        case TK_DOTS: {  /* param -> '...' */
          FUNC3(ls);
          f->is_vararg = 1;  /* declared vararg */
          break;
        }
        default: FUNC4(ls, "<name> or '...' expected");
      }
    } while (!f->is_vararg && FUNC7(ls, ','));
  }
  FUNC0(ls, nparams);
  f->numparams = FUNC1(fs->nactvar);
  FUNC2(fs, fs->nactvar);  /* reserve register for parameters */
}