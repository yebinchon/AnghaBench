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

/* Variables and functions */
 int SIZE_MAX ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,...) ; 
 scalar_t__* opt_block_list ; 
 scalar_t__ FUNC4 (char*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__* FUNC6 (size_t) ; 

__attribute__((used)) static void
FUNC7(char *str)
{
	// It must be non-empty and not begin with a comma.
	if (str[0] == '\0' || str[0] == ',')
		FUNC3(FUNC0("%s: Invalid argument to --block-list"), str);

	// Count the number of comma-separated strings.
	size_t count = 1;
	for (size_t i = 0; str[i] != '\0'; ++i)
		if (str[i] == ',')
			++count;

	// Prevent an unlikely integer overflow.
	if (count > SIZE_MAX / sizeof(uint64_t) - 1)
		FUNC3(FUNC0("%s: Too many arguments to --block-list"),
				str);

	// Allocate memory to hold all the sizes specified.
	// If --block-list was specified already, its value is forgotten.
	FUNC2(opt_block_list);
	opt_block_list = FUNC6((count + 1) * sizeof(uint64_t));

	for (size_t i = 0; i < count; ++i) {
		// Locate the next comma and replace it with \0.
		char *p = FUNC5(str, ',');
		if (p != NULL)
			*p = '\0';

		if (str[0] == '\0') {
			// There is no string, that is, a comma follows
			// another comma. Use the previous value.
			//
			// NOTE: We checked earler that the first char
			// of the whole list cannot be a comma.
			FUNC1(i > 0);
			opt_block_list[i] = opt_block_list[i - 1];
		} else {
			opt_block_list[i] = FUNC4("block-list", str,
					0, UINT64_MAX);

			// Zero indicates no more new Blocks.
			if (opt_block_list[i] == 0) {
				if (i + 1 != count)
					FUNC3(FUNC0("0 can only be used "
							"as the last element "
							"in --block-list"));

				opt_block_list[i] = UINT64_MAX;
			}
		}

		str = p + 1;
	}

	// Terminate the array.
	opt_block_list[count] = 0;
	return;
}