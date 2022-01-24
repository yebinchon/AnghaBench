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
typedef  int /*<<< orphan*/  alist_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 

alist_t *
FUNC3(char *url)
{
	alist_t *hosts = NULL;

	if (FUNC2(url, "file://", 7) == 0) {
		/*
		 * file:///etc/passwd
		 *        ^------------s
		 */
		hosts = FUNC0(url);

	} else if (*url == '/' || *url == '.') {
		hosts = FUNC0(url);

	} else if (FUNC2(url, "http://", 7) == 0) {
		hosts = FUNC1(url);
	}

	return hosts;
}