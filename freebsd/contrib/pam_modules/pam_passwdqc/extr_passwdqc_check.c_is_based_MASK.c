#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int match_length; } ;
typedef  TYPE_1__ passwdqc_params_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,int) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 

__attribute__((used)) static int FUNC7(passwdqc_params_t *params,
    const char *haystack, const char *needle, const char *original)
{
	char *scratch;
	int length;
	int i, j;
	const char *p;
	int match;

	if (!params->match_length)	/* disabled */
		return 0;

	if (params->match_length < 0)	/* misconfigured */
		return 1;

	if (FUNC6(haystack, needle))	/* based on haystack entirely */
		return 1;

	scratch = NULL;

	length = FUNC4(needle);
	for (i = 0; i <= length - params->match_length; i++)
	for (j = params->match_length; i + j <= length; j++) {
		match = 0;
		for (p = haystack; *p; p++)
		if (*p == needle[i] && !FUNC5(p, &needle[i], j)) {
			match = 1;
			if (!scratch) {
				if (!(scratch = FUNC2(length + 1)))
					return 1;
			}
			FUNC3(scratch, original, i);
			FUNC3(&scratch[i], &original[i + j],
			    length + 1 - (i + j));
			if (FUNC1(params, scratch)) {
				FUNC0(scratch);
				return 1;
			}
		}
		if (!match) break;
	}

	FUNC0(scratch);

	return 0;
}