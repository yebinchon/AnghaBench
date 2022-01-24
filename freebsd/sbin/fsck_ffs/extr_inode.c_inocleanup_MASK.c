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
struct inoinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * inphead ; 
 int inplast ; 
 struct inoinfo** inpsort ; 

void
FUNC1(void)
{
	struct inoinfo **inpp;

	if (inphead == NULL)
		return;
	for (inpp = &inpsort[inplast - 1]; inpp >= inpsort; inpp--)
		FUNC0((char *)(*inpp));
	FUNC0((char *)inphead);
	FUNC0((char *)inpsort);
	inphead = inpsort = NULL;
}