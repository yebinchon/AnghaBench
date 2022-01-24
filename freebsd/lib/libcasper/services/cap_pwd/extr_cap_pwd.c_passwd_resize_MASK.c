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
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* gbuffer ; 
 int gbufsize ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (char*,int) ; 

__attribute__((used)) static int
FUNC3(void)
{
	char *buf;

	if (gbufsize == 0)
		gbufsize = 1024;
	else
		gbufsize *= 2;

	buf = gbuffer;
	gbuffer = FUNC2(buf, gbufsize);
	if (gbuffer == NULL) {
		FUNC0(buf);
		gbufsize = 0;
		return (ENOMEM);
	}
	FUNC1(gbuffer, 0, gbufsize);

	return (0);
}