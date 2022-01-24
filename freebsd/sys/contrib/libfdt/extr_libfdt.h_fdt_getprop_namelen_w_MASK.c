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
 scalar_t__ FUNC0 (void*,int,char const*,int,int*) ; 

__attribute__((used)) static inline void *FUNC1(void *fdt, int nodeoffset,
					  const char *name, int namelen,
					  int *lenp)
{
	return (void *)(uintptr_t)FUNC0(fdt, nodeoffset, name,
						      namelen, lenp);
}