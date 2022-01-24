#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  expdesc ;
struct TYPE_18__ {TYPE_14__* f; } ;
struct TYPE_17__ {int /*<<< orphan*/  linenumber; } ;
struct TYPE_16__ {int linedefined; int /*<<< orphan*/  lastlinedefined; } ;
typedef  TYPE_1__ LexState ;
typedef  TYPE_2__ FuncState ;
typedef  int /*<<< orphan*/  BlockCnt ;

/* Variables and functions */
 int /*<<< orphan*/  TK_END ; 
 int /*<<< orphan*/  TK_FUNCTION ; 
 TYPE_14__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC10 (LexState *ls, expdesc *e, int ismethod, int line) {
  /* body ->  `(' parlist `)' block END */
  FuncState new_fs;
  BlockCnt bl;
  new_fs.f = FUNC0(ls);
  new_fs.f->linedefined = line;
  FUNC7(ls, &new_fs, &bl);
  FUNC3(ls, '(');
  if (ismethod) {
    FUNC6(ls, "self");  /* create 'self' parameter */
    FUNC1(ls, 1);
  }
  FUNC8(ls);
  FUNC3(ls, ')');
  FUNC9(ls);
  new_fs.f->lastlinedefined = ls->linenumber;
  FUNC2(ls, TK_END, TK_FUNCTION, line);
  FUNC5(ls, e);
  FUNC4(ls);
}