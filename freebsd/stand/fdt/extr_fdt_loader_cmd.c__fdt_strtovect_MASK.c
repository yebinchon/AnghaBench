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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(const char *str, void *cellbuf, int lim, unsigned char cellsize,
    uint8_t base)
{
	const char *buf = str;
	const char *end = str + FUNC2(str) - 2;
	uint32_t *u32buf = NULL;
	uint8_t *u8buf = NULL;
	int cnt = 0;

	if (cellsize == sizeof(uint32_t))
		u32buf = (uint32_t *)cellbuf;
	else
		u8buf = (uint8_t *)cellbuf;

	if (lim == 0)
		return (0);

	while (buf < end) {

		/* Skip white whitespace(s)/separators */
		while (!FUNC1(*buf) && buf < end)
			buf++;

		if (u32buf != NULL)
			u32buf[cnt] =
			    FUNC0((uint32_t)FUNC3(buf, NULL, base));

		else
			u8buf[cnt] = (uint8_t)FUNC3(buf, NULL, base);

		if (cnt + 1 <= lim - 1)
			cnt++;
		else
			break;
		buf++;
		/* Find another number */
		while ((FUNC1(*buf) || *buf == 'x') && buf < end)
			buf++;
	}
	return (cnt);
}