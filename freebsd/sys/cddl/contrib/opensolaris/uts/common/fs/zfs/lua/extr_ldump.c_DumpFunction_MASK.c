#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  maxstacksize; int /*<<< orphan*/  is_vararg; int /*<<< orphan*/  numparams; int /*<<< orphan*/  lastlinedefined; int /*<<< orphan*/  linedefined; } ;
typedef  TYPE_1__ Proto ;
typedef  int /*<<< orphan*/  DumpState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(const Proto* f, DumpState* D)
{
 FUNC4(f->linedefined,D);
 FUNC4(f->lastlinedefined,D);
 FUNC0(f->numparams,D);
 FUNC0(f->is_vararg,D);
 FUNC0(f->maxstacksize,D);
 FUNC1(f,D);
 FUNC2(f,D);
 FUNC5(f,D);
 FUNC3(f,D);
}