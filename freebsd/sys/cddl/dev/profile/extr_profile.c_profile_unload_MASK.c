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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  profile_cdev ; 
 int /*<<< orphan*/  profile_id ; 

__attribute__((used)) static int
FUNC2()
{
	int error = 0;

	if ((error = FUNC1(profile_id)) != 0)
		return (error);

	FUNC0(profile_cdev);

	return (error);
}