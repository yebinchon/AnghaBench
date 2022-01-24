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
typedef  int /*<<< orphan*/  uint64_t ;
struct pt_section {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_section*) ; 
 int FUNC1 (struct pt_section*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pt_section*) ; 

int FUNC3(struct pt_section *section, uint64_t *size)
{
	int errcode, status;

	errcode = FUNC0(section);
	if (errcode < 0)
		return errcode;

	status = FUNC1(section, size);

	errcode = FUNC2(section);
	if (errcode < 0)
		return errcode;

	return status;
}