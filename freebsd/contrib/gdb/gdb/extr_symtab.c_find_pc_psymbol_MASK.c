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
struct partial_symtab {int dummy; } ;
struct partial_symbol {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct partial_symbol* FUNC1 (struct partial_symtab*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct partial_symbol *
FUNC2 (struct partial_symtab *psymtab, CORE_ADDR pc)
{
  return FUNC1 (psymtab, pc, FUNC0 (pc));
}