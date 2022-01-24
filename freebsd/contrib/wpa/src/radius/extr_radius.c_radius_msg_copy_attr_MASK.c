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
typedef  scalar_t__ u8 ;
struct radius_msg {size_t attr_used; } ;
struct radius_attr_hdr {scalar_t__ type; int length; } ;

/* Variables and functions */
 struct radius_attr_hdr* FUNC0 (struct radius_msg*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct radius_msg*,scalar_t__,scalar_t__*,int) ; 

int FUNC2(struct radius_msg *dst, struct radius_msg *src,
			 u8 type)
{
	struct radius_attr_hdr *attr;
	size_t i;
	int count = 0;

	for (i = 0; i < src->attr_used; i++) {
		attr = FUNC0(src, i);
		if (attr->type == type && attr->length >= sizeof(*attr)) {
			if (!FUNC1(dst, type, (u8 *) (attr + 1),
						 attr->length - sizeof(*attr)))
				return -1;
			count++;
		}
	}

	return count;
}