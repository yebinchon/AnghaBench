#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_Number ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  const TValue ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 

const TValue *FUNC6 (const TValue *obj, TValue *n) {
  lua_Number num;
  if (FUNC4(obj)) return obj;
  if (FUNC5(obj) && FUNC0(FUNC2(obj), FUNC3(obj)->len, &num)) {
    FUNC1(n, num);
    return n;
  }
  else
    return NULL;
}