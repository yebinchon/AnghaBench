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
typedef  unsigned char u8 ;
typedef  int /*<<< orphan*/  skip_buf ;
typedef  int /*<<< orphan*/  Arc4 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 

int FUNC2(const u8 *key, size_t keylen, size_t skip, u8 *data,
	     size_t data_len)
{
#ifndef NO_RC4
	Arc4 arc4;
	unsigned char skip_buf[16];

	FUNC1(&arc4, key, keylen);

	while (skip >= sizeof(skip_buf)) {
		size_t len = skip;

		if (len > sizeof(skip_buf))
			len = sizeof(skip_buf);
		FUNC0(&arc4, skip_buf, skip_buf, len);
		skip -= len;
	}

	FUNC0(&arc4, data, data, data_len);

	return 0;
#else /* NO_RC4 */
	return -1;
#endif /* NO_RC4 */
}