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
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,char*) ; 
 int /*<<< orphan*/ * cfb_buf1 ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC4(const char *msg, unsigned char *ptr)
{
	char buf[1024];
	int i;

	*buf = '\0';
	for (i = 0; i < 24; i += 8) {
		char buf2[128];
		FUNC2(buf2, sizeof(buf2), "%s /", FUNC1(&(cfb_buf1[i])));
		FUNC3(buf, buf2, sizeof(buf));
	}

	FUNC0("%s: %s", msg, buf);
}