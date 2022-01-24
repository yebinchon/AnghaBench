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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 

int
FUNC5(unsigned char *buf, size_t size)
{
#ifdef HAVE_ARC4RANDOM_BUF
	arc4random_buf(buf, size);
	return (0);
#elif defined(HAVE_ARC4RANDOM)
	uint32_t val;

	PJDLOG_ASSERT(size > 0);
	PJDLOG_ASSERT((size % sizeof(val)) == 0);

	do {
		val = arc4random();
		bcopy(&val, buf, sizeof(val));
		buf += sizeof(val);
		size -= sizeof(val);
	} while (size > 0);

	return (0);
#else
	if (FUNC1(buf, (int)size) == 0)
		return (-1);
	return (0);
#endif
}