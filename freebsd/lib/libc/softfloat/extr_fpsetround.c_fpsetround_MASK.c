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
typedef  int /*<<< orphan*/  fp_rnd_t ;

/* Variables and functions */
 int /*<<< orphan*/  float_rounding_mode ; 

fp_rnd_t
FUNC0(fp_rnd_t rnd_dir)
{
	fp_rnd_t old;

	old = float_rounding_mode;
	float_rounding_mode = rnd_dir;
	return old;
}