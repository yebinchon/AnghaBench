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
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_2__ {char* preferred_authentications; } ;
typedef  int /*<<< orphan*/  Authmethod ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/ * current ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__ options ; 
 char* preferred ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 char* supported ; 
 char* FUNC8 (char*) ; 

__attribute__((used)) static Authmethod *
FUNC9(char *authlist)
{
	char *name = NULL;
	u_int next;

	/* Use a suitable default if we're passed a nil list.  */
	if (authlist == NULL || FUNC7(authlist) == 0)
		authlist = options.preferred_authentications;

	if (supported == NULL || FUNC6(authlist, supported) != 0) {
		FUNC3("start over, passed a different list %s", authlist);
		FUNC4(supported);
		supported = FUNC8(authlist);
		preferred = options.preferred_authentications;
		FUNC3("preferred %s", preferred);
		current = NULL;
	} else if (current != NULL && FUNC0(current))
		return current;

	for (;;) {
		if ((name = FUNC5(preferred, supported, &next)) == NULL) {
			FUNC2("No more authentication methods to try.");
			current = NULL;
			return NULL;
		}
		preferred += next;
		FUNC3("authmethod_lookup %s", name);
		FUNC3("remaining preferred: %s", preferred);
		if ((current = FUNC1(name)) != NULL &&
		    FUNC0(current)) {
			FUNC3("authmethod_is_enabled %s", name);
			FUNC2("Next authentication method: %s", name);
			FUNC4(name);
			return current;
		}
		FUNC4(name);
	}
}