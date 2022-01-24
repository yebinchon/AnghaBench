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
struct symbol_search {int /*<<< orphan*/  symbol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2 (const void *sa, const void *sb)
{
  struct symbol_search **sym_a = (struct symbol_search **) sa;
  struct symbol_search **sym_b = (struct symbol_search **) sb;

  return FUNC1 (FUNC0 ((*sym_a)->symbol),
		 FUNC0 ((*sym_b)->symbol));
}