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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(BIO* zone, const char* name)
{
	char buf[1024];
	char* z = NULL;
	long zlen;
	(void)FUNC1(zone, 0);
	zlen = FUNC0(zone, &z);
	if(!zlen || !z) return 0;
	/* zero terminate */
	if(zlen >= (long)sizeof(buf)) return 0;
	FUNC2(buf, z, (size_t)zlen);
	buf[zlen] = 0;
	/* compare */
	return (FUNC4(buf, name, FUNC3(name)) == 0);
}