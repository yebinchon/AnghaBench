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
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 size_t FUNC1 (int,void*,size_t) ; 

__attribute__((used)) static void
FUNC2(int fd, void *buffer, size_t buflen, const char *filename)
{
	ssize_t len;

	len = FUNC1(fd, buffer, buflen);
	if (len < 0)
		FUNC0(EX_OSERR, "write_file: %s", filename);
	if (len < buflen)
		FUNC0(EX_OSERR, "write_file: short write: %s", filename);
}