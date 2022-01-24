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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static char * FUNC2(const u8 *value, size_t len)
{
	char *buf;

	buf = FUNC0(len + 3);
	if (buf == NULL)
		return NULL;
	buf[0] = '"';
	FUNC1(buf + 1, value, len);
	buf[len + 1] = '"';
	buf[len + 2] = '\0';

	return buf;
}