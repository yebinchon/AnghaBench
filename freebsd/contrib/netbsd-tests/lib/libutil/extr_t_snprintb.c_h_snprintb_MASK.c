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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int FUNC2 (char*,int,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4(const char *fmt, uint64_t val, const char *res)
{
	char buf[1024];
	int len, slen;

	len = FUNC2(buf, sizeof(buf), fmt, val);
	slen = (int) FUNC3(res);

	FUNC1(res, buf);
	FUNC0(len, slen);
}