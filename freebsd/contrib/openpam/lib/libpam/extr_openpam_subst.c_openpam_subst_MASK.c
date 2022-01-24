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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  PAM_HOST ; 
 int /*<<< orphan*/  PAM_RHOST ; 
 int /*<<< orphan*/  PAM_RUSER ; 
 int /*<<< orphan*/  PAM_SERVICE ; 
 int PAM_SUCCESS ; 
 int PAM_TRY_AGAIN ; 
 int /*<<< orphan*/  PAM_TTY ; 
 int /*<<< orphan*/  PAM_USER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(const pam_handle_t *pamh,
    char *buf, size_t *bufsize, const char *template)
{
	size_t len;
	int ret;

	FUNC0(template);
	if (template == NULL)
		template = "(null)";

	len = 1; /* initialize to 1 for terminating NUL */
	ret = PAM_SUCCESS;
	while (*template && ret == PAM_SUCCESS) {
		if (template[0] == '%') {
			++template;
			switch (*template) {
			case 's':
				FUNC3(PAM_SERVICE);
				break;
			case 't':
				FUNC3(PAM_TTY);
				break;
			case 'h':
				FUNC3(PAM_HOST);
				break;
			case 'u':
				FUNC3(PAM_USER);
				break;
			case 'H':
				FUNC3(PAM_RHOST);
				break;
			case 'U':
				FUNC3(PAM_RUSER);
				break;
			case '\0':
				FUNC2('%');
				break;
			default:
				FUNC2('%');
				FUNC2(*template);
			}
			++template;
		} else {
			FUNC2(*template++);
		}
	}
	if (buf)
		*buf = '\0';
	if (ret == PAM_SUCCESS) {
		if (len > *bufsize)
			ret = PAM_TRY_AGAIN;
		*bufsize = len;
	}
	FUNC1(ret);
}