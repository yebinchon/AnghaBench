#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ifmedia_type_to_subtype {TYPE_1__* modes; } ;
struct ifmedia_description {scalar_t__ ifmt_word; int /*<<< orphan*/ * ifmt_string; } ;
struct TYPE_2__ {struct ifmedia_description* desc; scalar_t__ alias; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static struct ifmedia_description *FUNC1(int ifmw, 
    struct ifmedia_type_to_subtype *ttos)
{
	int i;
	struct ifmedia_description *desc;

	for (i = 0; ttos->modes[i].desc != NULL; i++) {
		if (ttos->modes[i].alias)
			continue;
		for (desc = ttos->modes[i].desc;
		    desc->ifmt_string != NULL; desc++) {
			if (FUNC0(ifmw) == desc->ifmt_word)
				return desc;
		}
	}

	return NULL;
}