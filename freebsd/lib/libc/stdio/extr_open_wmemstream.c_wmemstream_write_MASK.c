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
struct wmemstream {scalar_t__ offset; scalar_t__ len; scalar_t__* bufp; int /*<<< orphan*/  mbstate; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct wmemstream*,int,scalar_t__) ; 
 size_t FUNC1 (scalar_t__,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wmemstream*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct wmemstream*) ; 

__attribute__((used)) static int
FUNC5(void *cookie, const char *buf, int len)
{
	struct wmemstream *ms;
	ssize_t consumed, wlen;
	size_t charlen;

	ms = cookie;
	wlen = FUNC2(&ms->mbstate, buf, len);
	if (wlen < 0) {
		errno = EILSEQ;
		return (-1);
	}
	if (!FUNC3(ms, ms->offset + wlen))
		return (-1);

	/*
	 * This copies characters one at a time rather than using
	 * mbsnrtowcs() so it can properly handle embedded null
	 * characters.
	 */
	consumed = 0;
	while (len > 0 && ms->offset < ms->len) {
		charlen = FUNC1(*ms->bufp + ms->offset, buf, len,
		    &ms->mbstate);
		if (charlen == (size_t)-1) {
			if (consumed == 0) {
				errno = EILSEQ;
				return (-1);
			}
			/* Treat it as a successful short write. */
			break;
		}
		if (charlen == 0)
			/* XXX: Not sure how else to handle this. */
			charlen = 1;
		if (charlen == (size_t)-2) {
			consumed += len;
			len = 0;
		} else {
			consumed += charlen;
			buf += charlen;
			len -= charlen;
			ms->offset++;
		}
	}
	FUNC4(ms);
#ifdef DEBUG
	fprintf(stderr, "WMS: write(%p, %d) = %zd\n", ms, len, consumed);
#endif
	return (consumed);
}