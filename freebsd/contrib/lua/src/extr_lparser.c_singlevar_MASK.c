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
struct TYPE_11__ {scalar_t__ k; } ;
typedef  TYPE_1__ expdesc ;
struct TYPE_12__ {int /*<<< orphan*/ * envn; int /*<<< orphan*/ * fs; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_2__ LexState ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
 scalar_t__ VVOID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5 (LexState *ls, expdesc *var) {
  TString *varname = FUNC4(ls);
  FuncState *fs = ls->fs;
  FUNC3(fs, varname, var, 1);
  if (var->k == VVOID) {  /* global name? */
    expdesc key;
    FUNC3(fs, ls->envn, var, 1);  /* get environment variable */
    FUNC2(var->k != VVOID);  /* this one must exist */
    FUNC0(ls, &key, varname);  /* key is variable name */
    FUNC1(fs, var, &key);  /* env[varname] */
  }
}