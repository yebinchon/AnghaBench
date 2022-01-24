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
 int EINVAL ; 
 scalar_t__ MLX5_MED_BFREGS_TSHOLD ; 
 int FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(int tot_uuars)
{
	char *env;
	int num = 4;

	env = FUNC1("MLX5_NUM_LOW_LAT_UUARS");
	if (env)
		num = FUNC0(env);

	if (num < 0)
		return -EINVAL;

	num = FUNC2(num, tot_uuars - MLX5_MED_BFREGS_TSHOLD);
	return num;
}