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
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/  epbuf ;

/* Variables and functions */
 int REG_ITOA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int,int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static char *
FUNC2(int err)
{
	static char epbuf[100];
	size_t len;

	len = FUNC1(REG_ITOA|err, (regex_t *)NULL, epbuf, sizeof(epbuf));
	FUNC0(len <= sizeof(epbuf));
	return(epbuf);
}