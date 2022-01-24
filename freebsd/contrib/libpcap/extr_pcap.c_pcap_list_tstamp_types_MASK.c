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
struct TYPE_3__ {int tstamp_type_count; int /*<<< orphan*/  tstamp_type_list; int /*<<< orphan*/  errbuf; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */
 int PCAP_ERROR ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 

int
FUNC3(pcap_t *p, int **tstamp_typesp)
{
	if (p->tstamp_type_count == 0) {
		/*
		 * We don't support multiple time stamp types.
		 */
		*tstamp_typesp = NULL;
	} else {
		*tstamp_typesp = (int*)FUNC0(sizeof(**tstamp_typesp),
		    p->tstamp_type_count);
		if (*tstamp_typesp == NULL) {
			FUNC2(p->errbuf, sizeof(p->errbuf),
			    errno, "malloc");
			return (PCAP_ERROR);
		}
		(void)FUNC1(*tstamp_typesp, p->tstamp_type_list,
		    sizeof(**tstamp_typesp) * p->tstamp_type_count);
	}
	return (p->tstamp_type_count);
}