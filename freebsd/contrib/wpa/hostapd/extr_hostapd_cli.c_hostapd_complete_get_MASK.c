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
 int FUNC0 (char const**) ; 
 int FUNC1 (char const*,int) ; 
 char** FUNC2 (int,int) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static char ** FUNC4(const char *str, int pos)
{
	int arg = FUNC1(str, pos);
	const char *fields[] = {
		"version", "tls_library",
	};
	int i, num_fields = FUNC0(fields);

	if (arg == 1) {
		char **res;

		res = FUNC2(num_fields + 1, sizeof(char *));
		if (!res)
			return NULL;
		for (i = 0; i < num_fields; i++) {
			res[i] = FUNC3(fields[i]);
			if (!res[i])
				return res;
		}
		return res;
	}
	return NULL;
}