#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {int pb; int lp; int lc; } ;
typedef  TYPE_1__ lzma_options_lzma ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 

extern bool
FUNC2(const lzma_options_lzma *options, uint8_t *byte)
{
	if (!FUNC1(options))
		return true;

	*byte = (options->pb * 5 + options->lp) * 9 + options->lc;
	FUNC0(*byte <= (4 * 5 + 4) * 9 + 8);

	return false;
}