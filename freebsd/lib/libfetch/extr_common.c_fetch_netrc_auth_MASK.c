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
struct url {int netrcfd; char const* host; char* user; char* pwd; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 () ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC9 (char const*,char const*) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 char const* FUNC11 (int) ; 

int
FUNC12(struct url *url)
{
	const char *word;
	int serrno;
	FILE *f;

	if (url->netrcfd < 0)
		url->netrcfd = FUNC5();
	if (url->netrcfd < 0)
		return (-1);
	if ((f = FUNC3(url->netrcfd, "r")) == NULL) {
		serrno = errno;
		FUNC0("fdopen(netrcfd): %s", FUNC11(errno));
		FUNC1(url->netrcfd);
		url->netrcfd = -1;
		errno = serrno;
		return (-1);
	}
	FUNC7(f);
	FUNC0("searching netrc for %s\n", url->host);
	while ((word = FUNC6(f)) != NULL) {
		if (FUNC10(word, "default") == 0) {
			FUNC0("using default netrc settings\n");
			break;
		}
		if (FUNC10(word, "machine") == 0 &&
		    (word = FUNC6(f)) != NULL &&
		    FUNC9(word, url->host) == 0) {
			FUNC0("using netrc settings for %s\n", word);
			break;
		}
	}
	if (word == NULL)
		goto ferr;
	while ((word = FUNC6(f)) != NULL) {
		if (FUNC10(word, "login") == 0) {
			if ((word = FUNC6(f)) == NULL)
				goto ferr;
			if (FUNC8(url->user, sizeof(url->user),
				"%s", word) > (int)sizeof(url->user)) {
				FUNC4("login name in .netrc is too long");
				url->user[0] = '\0';
			}
		} else if (FUNC10(word, "password") == 0) {
			if ((word = FUNC6(f)) == NULL)
				goto ferr;
			if (FUNC8(url->pwd, sizeof(url->pwd),
				"%s", word) > (int)sizeof(url->pwd)) {
				FUNC4("password in .netrc is too long");
				url->pwd[0] = '\0';
			}
		} else if (FUNC10(word, "account") == 0) {
			if ((word = FUNC6(f)) == NULL)
				goto ferr;
			/* XXX not supported! */
		} else {
			break;
		}
	}
	FUNC2(f);
	url->netrcfd = -1;
	return (0);
ferr:
	serrno = errno;
	FUNC2(f);
	url->netrcfd = -1;
	errno = serrno;
	return (-1);
}