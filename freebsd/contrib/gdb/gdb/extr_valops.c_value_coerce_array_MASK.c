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
struct value {int dummy; } ;
struct type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 scalar_t__ FUNC1 (struct value*) ; 
 scalar_t__ FUNC2 (struct value*) ; 
 scalar_t__ FUNC3 (struct value*) ; 
 int /*<<< orphan*/  FUNC4 (struct value*) ; 
 struct type* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ lval_memory ; 
 struct value* FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

struct value *
FUNC9 (struct value *arg1)
{
  struct type *type = FUNC5 (FUNC4 (arg1));

  if (FUNC2 (arg1) != lval_memory)
    FUNC6 ("Attempt to take address of value not located in memory.");

  return FUNC8 (FUNC7 (FUNC0 (type)),
			     (FUNC1 (arg1) + FUNC3 (arg1)));
}