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
struct ifmedia_description {int ifmt_word; int /*<<< orphan*/ * ifmt_string; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int
FUNC1(struct ifmedia_description *desc, const char *val)
{

	for (; desc->ifmt_string != NULL; desc++)
		if (FUNC0(desc->ifmt_string, val) == 0)
			return (desc->ifmt_word);

	return (-1);
}