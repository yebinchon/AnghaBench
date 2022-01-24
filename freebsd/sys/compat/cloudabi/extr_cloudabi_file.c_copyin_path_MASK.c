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

/* Variables and functions */
 int EINVAL ; 
 int ENAMETOOLONG ; 
 int /*<<< orphan*/  M_CLOUDABI_PATH ; 
 int /*<<< orphan*/  M_WAITOK ; 
 size_t PATH_MAX ; 
 int FUNC0 (char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char,size_t) ; 

__attribute__((used)) static int
FUNC4(const char *uaddr, size_t len, char **result)
{
	char *buf;
	int error;

	if (len >= PATH_MAX)
		return (ENAMETOOLONG);
	buf = FUNC2(len + 1, M_CLOUDABI_PATH, M_WAITOK);
	error = FUNC0(uaddr, buf, len);
	if (error != 0) {
		FUNC1(buf, M_CLOUDABI_PATH);
		return (error);
	}
	if (FUNC3(buf, '\0', len) != NULL) {
		FUNC1(buf, M_CLOUDABI_PATH);
		return (EINVAL);
	}
	buf[len] = '\0';
	*result = buf;
	return (0);
}