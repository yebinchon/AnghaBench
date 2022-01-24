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
#define  EXTATTR_NAMESPACE_EMPTY 130 
#define  EXTATTR_NAMESPACE_SYSTEM 129 
 char* EXTATTR_NAMESPACE_SYSTEM_STRING ; 
#define  EXTATTR_NAMESPACE_USER 128 
 char* EXTATTR_NAMESPACE_USER_STRING ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 size_t FUNC1 (char*,size_t,char*,char const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char) ; 
 scalar_t__ FUNC3 (char const*,char*,int) ; 

__attribute__((used)) static int
FUNC4(int attrnamespace, const char *name, char *attrname,
    size_t size)
{
	const char *namespace, *prefix, *suffix;

	/* We don't allow '/' character in attribute name. */
	if (FUNC2(name, '/') != NULL)
		return (EINVAL);
	/* We don't allow attribute names that start with "freebsd:" string. */
	if (FUNC3(name, "freebsd:", 8) == 0)
		return (EINVAL);

	FUNC0(attrname, size);

	switch (attrnamespace) {
	case EXTATTR_NAMESPACE_USER:
#if 0
		prefix = "freebsd:";
		namespace = EXTATTR_NAMESPACE_USER_STRING;
		suffix = ":";
#else
		/*
		 * This is the default namespace by which we can access all
		 * attributes created on Solaris.
		 */
		prefix = namespace = suffix = "";
#endif
		break;
	case EXTATTR_NAMESPACE_SYSTEM:
		prefix = "freebsd:";
		namespace = EXTATTR_NAMESPACE_SYSTEM_STRING;
		suffix = ":";
		break;
	case EXTATTR_NAMESPACE_EMPTY:
	default:
		return (EINVAL);
	}
	if (FUNC1(attrname, size, "%s%s%s%s", prefix, namespace, suffix,
	    name) >= size) {
		return (ENAMETOOLONG);
	}
	return (0);
}