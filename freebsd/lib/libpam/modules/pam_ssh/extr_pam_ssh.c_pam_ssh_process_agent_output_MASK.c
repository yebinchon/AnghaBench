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
typedef  int /*<<< orphan*/  pam_handle_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  PAM_LOG_DEBUG ; 
 char* FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC4(pam_handle_t *pamh, FILE *f)
{
	char *line, *p, *key, *val;
	size_t len;

	while ((line = FUNC0(f, &len)) != NULL) {
		if (len < 4 || FUNC3(line, "SSH_", 4) != 0)
			continue;

		/* find equal sign at end of key */
		for (p = key = line; p < line + len; ++p)
			if (*p == '=')
				break;
		if (p == line + len || *p != '=')
			continue;
		*p = '\0';

		/* find semicolon at end of value */
		for (val = ++p; p < line + len; ++p)
			if (*p == ';')
				break;
		if (p == line + len || *p != ';')
			continue;
		*p = '\0';

		/* store key-value pair in environment */
		FUNC1(PAM_LOG_DEBUG, "got %s: %s", key, val);
		FUNC2(pamh, key, val, 1);
	}
}