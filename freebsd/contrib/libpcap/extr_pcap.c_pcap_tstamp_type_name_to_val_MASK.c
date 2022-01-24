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
struct TYPE_2__ {int type; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int PCAP_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_1__* tstamp_type_choices ; 

int
FUNC1(const char *name)
{
	int i;

	for (i = 0; tstamp_type_choices[i].name != NULL; i++) {
		if (FUNC0(tstamp_type_choices[i].name, name) == 0)
			return (tstamp_type_choices[i].type);
	}
	return (PCAP_ERROR);
}