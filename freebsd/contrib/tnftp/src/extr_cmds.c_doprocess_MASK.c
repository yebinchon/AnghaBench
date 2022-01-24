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
 char* FUNC0 (char*,size_t,char const*) ; 
 char* FUNC1 (char*,size_t,char const*) ; 
 char* FUNC2 (char*,size_t,char const*) ; 

__attribute__((used)) static const char *
FUNC3(char *dst, size_t dlen, const char *src,
    int casef, int transf, int mapf)
{
	if (casef)
		src = FUNC0(dst, dlen, src);
	if (transf)
		src = FUNC2(dst, dlen, src);
	if (mapf)
		src = FUNC1(dst, dlen, src);
	return src;
}