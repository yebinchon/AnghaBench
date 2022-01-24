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
typedef  int /*<<< orphan*/  xo_handle_t ;
struct TYPE_4__ {int /*<<< orphan*/  xe_handler; } ;
typedef  TYPE_1__ xo_encoder_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  XO_OP_CREATE ; 
 int /*<<< orphan*/  XO_OP_OPTIONS ; 
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 (char const*,char) ; 
 size_t FUNC3 (char const*) ; 
 TYPE_1__* FUNC4 (char const*) ; 
 TYPE_1__* FUNC5 (char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC10 (xo_handle_t *xop, const char *name)
{
    FUNC7();

    const char *opts = FUNC2(name, ':');
    if (opts) {
	/* Make a writable copy of the name */
	size_t len = FUNC3(name);
	char *copy = FUNC0(len + 1);
	FUNC1(copy, name, len);
	copy[len] = '\0';

	char *opts_copy = copy + (opts - name); /* Move to ':' */
	*opts_copy++ = '\0';			/* Trim it off */

	opts = opts_copy;	/* Use copy as options */
	name = copy;		/* Use trimmed copy as name */
    }

    /* Can't have names containing '/' or ':' */
    if (FUNC2(name, '/') != NULL || FUNC2(name, ':') != NULL) {
	FUNC8(xop, "invalid encoder name: %s", name);
	return -1;
    }

   /*
     * First we look on the list of known (registered) encoders.
     * If we don't find it, we follow the set of paths to find
     * the encoding library.
     */
    xo_encoder_node_t *xep = FUNC5(name);
    if (xep == NULL) {
	xep = FUNC4(name);
	if (xep == NULL) {
	    FUNC8(xop, "encoder not founde: %s", name);
	    return -1;
	}
    }

    FUNC9(xop, xep->xe_handler);

    int rc = FUNC6(xop, XO_OP_CREATE, name, NULL, 0);
    if (rc == 0 && opts != NULL) {
	rc = FUNC6(xop, XO_OP_OPTIONS, name, opts, 0);
    }

    return rc;
}