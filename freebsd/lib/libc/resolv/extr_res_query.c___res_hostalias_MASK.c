#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* res_state ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int options; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int RES_NOALIASES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 int FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,size_t) ; 

const char *
FUNC9(const res_state statp, const char *name, char *dst, size_t siz) {
	char *file, *cp1, *cp2;
	char buf[BUFSIZ];
	FILE *fp;

	if (statp->options & RES_NOALIASES)
		return (NULL);
	if (FUNC4())
		return (NULL);
	file = FUNC3("HOSTALIASES");
	if (file == NULL || (fp = FUNC2(file, "re")) == NULL)
		return (NULL);
	FUNC7(fp, NULL);
	buf[sizeof(buf) - 1] = '\0';
	while (FUNC1(buf, sizeof(buf), fp)) {
		for (cp1 = buf; *cp1 && !FUNC5((unsigned char)*cp1); ++cp1)
			;
		if (!*cp1)
			break;
		*cp1 = '\0';
		if (FUNC6(buf, name) == 1) {
			while (FUNC5((unsigned char)*++cp1))
				;
			if (!*cp1)
				break;
			for (cp2 = cp1 + 1; *cp2 &&
			     !FUNC5((unsigned char)*cp2); ++cp2)
				;
			*cp2 = '\0';
			FUNC8(dst, cp1, siz - 1);
			dst[siz - 1] = '\0';
			FUNC0(fp);
			return (dst);
		}
	}
	FUNC0(fp);
	return (NULL);
}