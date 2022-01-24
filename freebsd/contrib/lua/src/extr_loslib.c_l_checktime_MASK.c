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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ lua_Integer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static time_t FUNC2 (lua_State *L, int arg) {
  lua_Integer t = FUNC1(L, arg);
  FUNC0(L, (time_t)t == t, arg, "time out-of-bounds");
  return (time_t)t;
}