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
struct sscfu {int state; } ;
typedef  enum sscfu_state { ____Placeholder_sscfu_state } sscfu_state ;

/* Variables and functions */

enum sscfu_state
FUNC0(const struct sscfu *sscf)
{
	return (sscf->state);
}