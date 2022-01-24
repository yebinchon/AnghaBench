#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  excludes; } ;
typedef  TYPE_1__ _BIG5EncodingInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char const*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,void*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  root_hints ; 

__attribute__((used)) static int
/*ARGSUSED*/
FUNC6(_BIG5EncodingInfo * __restrict ei,
    const void * __restrict var, size_t lenvar)
{
	const char *s;
	int err;

	FUNC5((void *)ei, 0, sizeof(*ei));
	FUNC0(&ei->excludes);

	if (lenvar > 0 && var != NULL) {
		s = FUNC1((const char *)var, &lenvar);
		if (lenvar > 0 && *s != '\0') {
			err = FUNC4(
			    root_hints, (void *)ei, s, lenvar);
			if (err == 0)
				return (0);

			FUNC2(ei);
			FUNC5((void *)ei, 0, sizeof(*ei));
			FUNC0(&ei->excludes);
		}
	}

	/* fallback Big5-1984, for backward compatibility. */
	FUNC3(ei, "row", 0xA1, 0xFE);
	FUNC3(ei, "col", 0x40, 0x7E);
	FUNC3(ei, "col", 0xA1, 0xFE);

	return (0);
}