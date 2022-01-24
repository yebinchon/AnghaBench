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

/* Variables and functions */
 scalar_t__ cache_novlys ; 
 int /*<<< orphan*/ * cache_ovly_table ; 
 scalar_t__ cache_ovly_table_base ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1 (void)
{
  if (cache_ovly_table)
    FUNC0 (cache_ovly_table);
  cache_novlys = 0;
  cache_ovly_table = NULL;
  cache_ovly_table_base = 0;
}