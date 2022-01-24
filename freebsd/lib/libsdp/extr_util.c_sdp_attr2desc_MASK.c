#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  TYPE_1__* sdp_attr_desc_p ;
struct TYPE_3__ {char const* desc; scalar_t__ attr; } ;

/* Variables and functions */
 TYPE_1__* sdp_attrs_desc ; 

char const *
FUNC0(uint16_t attr)
{
	register sdp_attr_desc_p	a = sdp_attrs_desc;

	for (; a->desc != NULL; a++)
		if (attr == a->attr)
			break;

	return ((a->desc != NULL)? a->desc : "Unknown");
}