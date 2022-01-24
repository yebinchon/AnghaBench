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
typedef  int /*<<< orphan*/  uint64_t ;
struct activemap {scalar_t__ am_magic; int /*<<< orphan*/  am_ndirty; } ;

/* Variables and functions */
 scalar_t__ ACTIVEMAP_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

uint64_t
FUNC1(const struct activemap *amp)
{

	FUNC0(amp->am_magic == ACTIVEMAP_MAGIC);

	return (amp->am_ndirty);
}