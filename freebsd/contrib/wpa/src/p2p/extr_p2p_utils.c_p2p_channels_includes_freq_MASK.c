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
struct p2p_reg_class {size_t channels; int /*<<< orphan*/ * channel; int /*<<< orphan*/  reg_class; } ;
struct p2p_channels {size_t reg_classes; struct p2p_reg_class* reg_class; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(const struct p2p_channels *channels,
			       unsigned int freq)
{
	size_t i, j;
	for (i = 0; i < channels->reg_classes; i++) {
		const struct p2p_reg_class *reg = &channels->reg_class[i];
		for (j = 0; j < reg->channels; j++) {
			if (FUNC0(reg->reg_class,
						reg->channel[j]) == (int) freq)
				return 1;
		}
	}
	return 0;
}