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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (char*,size_t,char const*,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 

__attribute__((used)) static const char *
FUNC2(const u_char *src, char *dst, size_t size)
{
	static const char fmt[] = "%u.%u.%u.%u";
	char tmp[sizeof "255.255.255.255"];
	int l;

	l = FUNC0(tmp, size, fmt, src[0], src[1], src[2], src[3]);
	if (l <= 0 || l >= (int)size) {
		errno = ENOSPC;
		return (NULL);
	}
	FUNC1(dst, tmp, size);
	return (dst);
}