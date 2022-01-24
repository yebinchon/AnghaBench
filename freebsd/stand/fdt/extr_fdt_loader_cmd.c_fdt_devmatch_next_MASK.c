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
struct fdt_property {char const* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct fdt_property* FUNC1 (int /*<<< orphan*/ *,int,char*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * fdtp ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

const char *
FUNC7(int *tag, int *compatlen)
{
	const struct fdt_property *p;
	const struct fdt_property *status;
	int o, len = -1;
	static int depth = 0;

	if (fdtp == NULL) {
		FUNC4();
		FUNC0();
	}

	if (*tag != 0) {
		o = *tag;
		/* We are at the end of the DTB */
		if (o < 0)
			return (NULL);
	} else {
		o = FUNC3(fdtp, "/");
		if (o < 0) {
			FUNC5("Can't find dtb\n");
			return (NULL);
		}
		depth = 0;
	}

	/* Find the next node with a compatible property */
	while (1) {
		p = NULL;
		if (o >= 0 && depth >= 0) {
			/* skip disabled nodes */
			status = FUNC1(fdtp, o, "status", &len);
			if (len > 0) {
				if (FUNC6(status->data, "disabled") == 0) {
					o = FUNC2(fdtp, o, &depth);
					if (o < 0) /* End of tree */
						return (NULL);
					continue;
				}
			}

			p = FUNC1(fdtp, o, "compatible", &len);
		}
		if (p)
			break;
		o = FUNC2(fdtp, o, &depth);
		if (o < 0) /* End of tree */
			return (NULL);
	}

	/* Prepare next node for next call */
	o = FUNC2(fdtp, o, &depth);
	*tag = o;

	if (len >= 0) {
		*compatlen = len;
		return (p->data);
	}
	return (NULL);
}