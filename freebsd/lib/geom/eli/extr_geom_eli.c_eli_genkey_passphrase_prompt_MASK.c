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
typedef  int /*<<< orphan*/  tmpbuf ;
struct gctl_req {int dummy; } ;

/* Variables and functions */
 int BUFSIZE ; 
 int RPP_ECHO_OFF ; 
 int RPP_REQUIRE_TTY ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct gctl_req *req, bool new, char *passbuf,
    size_t passbufsize)
{
	char *p;

	for (;;) {
		p = FUNC3(
		    new ? "Enter new passphrase: " : "Enter passphrase: ",
		    passbuf, passbufsize, RPP_ECHO_OFF | RPP_REQUIRE_TTY);
		if (p == NULL) {
			FUNC0(passbuf, passbufsize);
			FUNC2(req, "Cannot read passphrase: %s.",
			    FUNC5(errno));
			return (-1);
		}

		if (new) {
			char tmpbuf[BUFSIZE];

			p = FUNC3("Reenter new passphrase: ",
			    tmpbuf, sizeof(tmpbuf),
			    RPP_ECHO_OFF | RPP_REQUIRE_TTY);
			if (p == NULL) {
				FUNC0(passbuf, passbufsize);
				FUNC2(req,
				    "Cannot read passphrase: %s.",
				    FUNC5(errno));
				return (-1);
			}

			if (FUNC4(passbuf, tmpbuf) != 0) {
				FUNC0(passbuf, passbufsize);
				FUNC1(stderr, "They didn't match.\n");
				continue;
			}
			FUNC0(tmpbuf, sizeof(tmpbuf));
		}
		return (0);
	}
	/* NOTREACHED */
}