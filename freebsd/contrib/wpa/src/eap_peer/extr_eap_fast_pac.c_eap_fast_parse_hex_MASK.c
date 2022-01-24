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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static u8 * FUNC4(const char *value, size_t *len)
{
	int hlen;
	u8 *buf;

	if (value == NULL)
		return NULL;
	hlen = FUNC3(value);
	if (hlen & 1)
		return NULL;
	*len = hlen / 2;
	buf = FUNC2(*len);
	if (buf == NULL)
		return NULL;
	if (FUNC0(value, buf, *len)) {
		FUNC1(buf);
		return NULL;
	}
	return buf;
}