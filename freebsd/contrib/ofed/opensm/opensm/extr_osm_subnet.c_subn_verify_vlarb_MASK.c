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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*,...) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char*,char*,char**) ; 
 long FUNC5 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(char **vlarb, const char *prefix,
			      const char *suffix)
{
	char *str, *tok, *end, *ptr;
	int count = 0;

	if (*vlarb == NULL)
		return;

	str = FUNC3(*vlarb);

	tok = FUNC4(str, ",\n", &ptr);
	while (tok) {
		char *vl_str, *weight_str;

		vl_str = tok;
		weight_str = FUNC2(tok, ':');

		if (weight_str) {
			long vl, weight;

			*weight_str = '\0';
			weight_str++;

			vl = FUNC5(vl_str, &end, 0);

			if (*end)
				FUNC1(" Warning: Cached Option "
					   "%s_vlarb_%s:vl=%s"
					   " improperly formatted\n",
					   prefix, suffix, vl_str);
			else if (vl < 0 || vl > 14)
				FUNC1(" Warning: Cached Option "
					   "%s_vlarb_%s:vl=%ld out of range\n",
					   prefix, suffix, vl);

			weight = FUNC5(weight_str, &end, 0);

			if (*end)
				FUNC1(" Warning: Cached Option "
					   "%s_vlarb_%s:weight=%s "
					   "improperly formatted\n",
					   prefix, suffix, weight_str);
			else if (weight < 0 || weight > 255)
				FUNC1(" Warning: Cached Option "
					   "%s_vlarb_%s:weight=%ld "
					   "out of range\n",
					   prefix, suffix, weight);
		} else
			FUNC1(" Warning: Cached Option "
				   "%s_vlarb_%s:vl:weight=%s "
				   "improperly formatted\n",
				   prefix, suffix, tok);

		count++;
		tok = FUNC4(NULL, ",\n", &ptr);
	}

	if (count > 64)
		FUNC1(" Warning: Cached Option %s_vlarb_%s: > 64 listed:"
			   " excess vl:weight pairs will be dropped\n",
			   prefix, suffix);

	FUNC0(str);
}