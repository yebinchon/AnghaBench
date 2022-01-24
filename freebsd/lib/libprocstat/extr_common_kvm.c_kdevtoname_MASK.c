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
struct cdev {int /*<<< orphan*/  si_name; } ;
typedef  int /*<<< orphan*/  si ;
typedef  int /*<<< orphan*/  kvm_t ;

/* Variables and functions */
 scalar_t__ SPECNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long,struct cdev*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC3(kvm_t *kd, struct cdev *dev, char *buf)
{
	struct cdev si;

	FUNC0(buf);
	if (!FUNC1(kd, (unsigned long)dev, &si, sizeof(si)))
		return (1);
	FUNC2(buf, si.si_name, SPECNAMELEN + 1);
	return (0);
}