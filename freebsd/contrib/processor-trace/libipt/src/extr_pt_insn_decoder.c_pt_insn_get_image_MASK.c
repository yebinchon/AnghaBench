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
struct pt_insn_decoder {struct pt_image* image; } ;
struct pt_image {int dummy; } ;

/* Variables and functions */

struct pt_image *FUNC0(struct pt_insn_decoder *decoder)
{
	if (!decoder)
		return NULL;

	return decoder->image;
}