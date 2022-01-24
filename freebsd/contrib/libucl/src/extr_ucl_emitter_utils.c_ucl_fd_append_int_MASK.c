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
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int /*<<< orphan*/  intbuf ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (int64_t val, void *ud)
{
	int fd = *(int *)ud;
	char intbuf[64];

	FUNC0 (intbuf, sizeof (intbuf), "%jd", (intmax_t)val);
	return FUNC2 (fd, intbuf, FUNC1 (intbuf));
}