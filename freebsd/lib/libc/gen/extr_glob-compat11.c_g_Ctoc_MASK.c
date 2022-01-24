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
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  mbs ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ EOS ; 
 size_t MB_CUR_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 size_t FUNC2 (char*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(const Char *str, char *buf, size_t len)
{
	mbstate_t mbs;
	size_t clen;

	FUNC1(&mbs, 0, sizeof(mbs));
	while (len >= MB_CUR_MAX) {
		clen = FUNC2(buf, FUNC0(*str), &mbs);
		if (clen == (size_t)-1) {
			/* XXX See initial comment #2. */
			*buf = (char)FUNC0(*str);
			clen = 1;
			FUNC1(&mbs, 0, sizeof(mbs));
		}
		if (FUNC0(*str) == EOS)
			return (0);
		str++;
		buf += clen;
		len -= clen;
	}
	return (1);
}