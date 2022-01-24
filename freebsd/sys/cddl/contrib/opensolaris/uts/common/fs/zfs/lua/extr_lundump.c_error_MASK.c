#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  l_noret ;
struct TYPE_3__ {int /*<<< orphan*/  L; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ LoadState ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_ERRSYNTAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static l_noret FUNC2(LoadState* S, const char* why)
{
 FUNC1(S->L,"%s: %s precompiled chunk",S->name,why);
 FUNC0(S->L,LUA_ERRSYNTAX);
}