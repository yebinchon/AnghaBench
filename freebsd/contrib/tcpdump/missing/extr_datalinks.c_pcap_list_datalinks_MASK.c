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
typedef  int /*<<< orphan*/  pcap_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(pcap_t *p, int **dlt_buffer)
{
	/*
	 * This platform doesn't support changing the DLT for an
	 * interface.  Return a list of DLTs containing only the
	 * DLT this device supports.
	 */
	*dlt_buffer = (int*)FUNC0(sizeof(**dlt_buffer));
	if (*dlt_buffer == NULL)
		return (-1);
	**dlt_buffer = FUNC1(p);
	return (1);
}