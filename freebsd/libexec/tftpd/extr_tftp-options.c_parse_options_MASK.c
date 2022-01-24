#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {char* o_request; int /*<<< orphan*/ * o_type; scalar_t__ (* o_handler ) (int) ;int /*<<< orphan*/  rfc; } ;

/* Variables and functions */
 int DEBUG_OPTIONS ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  acting_as_client ; 
 int debug ; 
 int FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char) ; 
 TYPE_1__* options ; 
 int /*<<< orphan*/  options_extra_enabled ; 
 int /*<<< orphan*/  options_rfc_enabled ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char FUNC6 (char) ; 

int
FUNC7(int peer, char *buffer, uint16_t size)
{
	int	i, options_failed;
	char	*c, *cp, *option, *value;

	if (!options_rfc_enabled) return (0);

	/* Parse the options */
	cp = buffer;
	options_failed = 0;	
	while (size > 0) {
		option = cp;
		i = FUNC0(peer, cp, size);
		cp += i;

		value = cp;
		i = FUNC0(peer, cp, size);
		cp += i;

		/* We are at the end */
		if (*option == '\0') break;

		if (debug&DEBUG_OPTIONS)
			FUNC5(LOG_DEBUG,
			    "option: '%s' value: '%s'", option, value);

		for (c = option; *c; c++)
			if (FUNC1(*c))
				*c = FUNC6(*c);
		for (i = 0; options[i].o_type != NULL; i++) {
			if (FUNC2(option, options[i].o_type) == 0) {
				if (!acting_as_client)
					options[i].o_request = value;
				if (!options_extra_enabled && !options[i].rfc) {
					FUNC5(LOG_INFO,
					    "Option '%s' with value '%s' found "
					    "but it is not an RFC option",
					    option, value);
					continue;
				}
				if (options[i].o_handler)
					options_failed +=
					    (options[i].o_handler)(peer);
				break;
			}
		}
		if (options[i].o_type == NULL)
			FUNC5(LOG_WARNING,
			    "Unknown option: '%s'", option);

		size -= FUNC3(option) + FUNC3(value) + 2;
	}

	return (options_failed);
}