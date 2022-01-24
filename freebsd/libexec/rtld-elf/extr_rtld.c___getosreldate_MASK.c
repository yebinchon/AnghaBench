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
typedef  int /*<<< orphan*/  osrel ;

/* Variables and functions */
 int CTL_KERN ; 
 int KERN_OSRELDATE ; 
 int osreldate ; 
 int FUNC0 (int*,int,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC1(void)
{
	size_t len;
	int oid[2];
	int error, osrel;

	if (osreldate != 0)
		return (osreldate);

	oid[0] = CTL_KERN;
	oid[1] = KERN_OSRELDATE;
	osrel = 0;
	len = sizeof(osrel);
	error = FUNC0(oid, 2, &osrel, &len, NULL, 0);
	if (error == 0 && osrel > 0 && len == sizeof(osrel))
		osreldate = osrel;
	return (osreldate);
}