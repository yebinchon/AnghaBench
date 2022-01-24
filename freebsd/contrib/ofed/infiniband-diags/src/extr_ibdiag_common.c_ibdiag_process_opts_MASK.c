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
struct ibdiag_opt {int dummy; } ;
typedef  int /*<<< orphan*/  str_opts ;

/* Variables and functions */
 int /*<<< orphan*/  IBDIAG_CONFIG_GENERAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int,char* const*,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ long_opts ; 
 scalar_t__ FUNC3 (char const*,struct ibdiag_opt const*,struct ibdiag_opt**) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 
 char* optarg ; 
 struct ibdiag_opt** opts_map ; 
 scalar_t__ FUNC5 (int,char*) ; 
 char const* prog_args ; 
 char const** prog_examples ; 
 char* prog_name ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(int argc, char *const argv[], void *cxt,
			const char *exclude_common_str,
			const struct ibdiag_opt custom_opts[],
			int (*custom_handler) (void *cxt, int val,
					       char *optarg),
			const char *usage_args, const char *usage_examples[])
{
	char str_opts[1024];
	const struct ibdiag_opt *o;

	prog_name = argv[0];
	prog_args = usage_args;
	prog_examples = usage_examples;

	if (long_opts)
		FUNC0(long_opts);

	long_opts = FUNC3(exclude_common_str, custom_opts, opts_map);
	if (!long_opts)
		return -1;

	FUNC6(IBDIAG_CONFIG_GENERAL);

	FUNC4(long_opts, str_opts, sizeof(str_opts));

	while (1) {
		int ch = FUNC1(argc, argv, str_opts, long_opts, NULL);
		if (ch == -1)
			break;
		o = opts_map[ch];
		if (!o)
			FUNC2();
		if (custom_handler) {
			if (custom_handler(cxt, ch, optarg) &&
			    FUNC5(ch, optarg))
				FUNC2();
		} else if (FUNC5(ch, optarg))
			FUNC2();
	}

	return 0;
}