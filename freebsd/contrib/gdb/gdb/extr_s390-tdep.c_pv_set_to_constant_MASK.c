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
struct prologue_value {int /*<<< orphan*/  k; int /*<<< orphan*/  kind; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  pv_constant ; 

__attribute__((used)) static void
FUNC0 (struct prologue_value *v, CORE_ADDR k)
{
  v->kind = pv_constant;
  v->k = k;
}