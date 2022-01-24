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
 int FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(void)
{
	char *env;
	int size = 64;

	env = FUNC1("MLX5_CQE_SIZE");
	if (env)
		size = FUNC0(env);

	switch (size) {
	case 64:
	case 128:
		return size;

	default:
		return -EINVAL;
	}
}