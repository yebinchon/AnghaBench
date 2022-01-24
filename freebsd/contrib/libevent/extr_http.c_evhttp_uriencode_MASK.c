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
struct evbuffer {int dummy; } ;
typedef  scalar_t__ ev_ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 size_t EV_SSIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer*) ; 
 struct evbuffer* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct evbuffer*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (char const*) ; 

char *
FUNC9(const char *uri, ev_ssize_t len, int space_as_plus)
{
	struct evbuffer *buf = FUNC5();
	const char *p, *end;
	char *result;

	if (buf == NULL) {
		return (NULL);
	}


	if (len >= 0) {
		if (uri + len < uri) {
			return (NULL);
		}

		end = uri + len;
	} else {
		size_t slen = FUNC8(uri);

		if (slen >= EV_SSIZE_MAX) {
			/* we don't want to mix signed and unsigned */
			return (NULL);
		}

		if (uri + slen < uri) {
			return (NULL);
		}

		end = uri + slen;
	}

	for (p = uri; p < end; p++) {
		if (FUNC0(*p)) {
			FUNC1(buf, p, 1);
		} else if (*p == ' ' && space_as_plus) {
			FUNC1(buf, "+", 1);
		} else {
			FUNC2(buf, "%%%02X", (unsigned char)(*p));
		}
	}

	FUNC1(buf, "", 1); /* NUL-terminator. */
	result = FUNC7(FUNC4(buf));

	if (result)
		FUNC6(buf, result, FUNC4(buf));

	FUNC3(buf);

	return (result);
}