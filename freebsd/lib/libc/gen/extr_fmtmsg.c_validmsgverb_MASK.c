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
 scalar_t__ FUNC0 (char*,char const*,size_t) ; 
 char* FUNC1 (char const*) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(const char *msgverb)
{
	const char *validlist = "label\0severity\0text\0action\0tag\0";
	char *msgcomp;
	size_t len1, len2;
	const char *p;
	int equality;

	equality = 0;
	while ((msgcomp = FUNC1(msgverb)) != NULL) {
		equality--;
		len1 = FUNC2(msgcomp);
		for (p = validlist; (len2 = FUNC2(p)) != 0; p += len2 + 1) {
			if (len1 == len2 && FUNC0(msgcomp, p, len1) == 0)
				equality++;
		}
	}
	return (!equality);
}