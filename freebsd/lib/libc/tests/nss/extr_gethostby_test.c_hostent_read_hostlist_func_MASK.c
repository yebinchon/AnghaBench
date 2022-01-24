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
struct hostent {int /*<<< orphan*/ * h_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hostent*) ; 
 struct hostent* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  af_type ; 
 int /*<<< orphan*/  FUNC3 (struct hostent*,struct hostent*) ; 
 int FUNC4 (struct hostent*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hostent*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(struct hostent *he, char *line)
{
	struct hostent *result;
	int rv;

#ifdef DEBUG
	printf("resolving %s: ", line);
#endif
	result = FUNC2(line, af_type);
	if (result != NULL) {
#ifdef DEBUG
		printf("found\n");
#endif

		rv = FUNC4(result, NULL);
		if (rv != 0) {
			FUNC1(result);
			return (rv);
		}

		FUNC3(he, result);
		FUNC1(result);
	} else {
#ifdef DEBUG
		printf("not found\n");
#endif
 		FUNC5(he, 0, sizeof(struct hostent));
		he->h_name = FUNC7(line);
		FUNC0(he->h_name != NULL);
	}
	return (0);
}