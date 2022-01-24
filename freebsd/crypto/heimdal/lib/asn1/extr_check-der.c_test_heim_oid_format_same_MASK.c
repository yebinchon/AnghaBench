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
typedef  int /*<<< orphan*/  heim_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC2 (char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/  const*,char,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 
 int FUNC6 (char*,char const*) ; 

__attribute__((used)) static int
FUNC7(const char *str, const heim_oid *oid)
{
    int ret;
    char *p;
    heim_oid o2;

    ret = FUNC3(oid, ' ', &p);
    if (ret) {
	FUNC5("fail to print oid: %s\n", str);
	return 1;
    }
    ret = FUNC6(p, str);
    if (ret) {
	FUNC5("oid %s != formated oid %s\n", str, p);
	FUNC4(p);
	return ret;
    }

    ret = FUNC2(p, " ", &o2);
    if (ret) {
	FUNC5("failed to parse %s\n", p);
	FUNC4(p);
	return ret;
    }
    FUNC4(p);
    ret = FUNC1(&o2, oid);
    FUNC0(&o2);

    return ret;
}