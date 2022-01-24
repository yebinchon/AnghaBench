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
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 

__attribute__((used)) static const char *
FUNC2(const char *str, const char *hdr)
{
	while (*str && *hdr &&
	    FUNC1((unsigned char)*str++) == FUNC1((unsigned char)*hdr++))
		/* nothing */;
	if (*str || *hdr != ':')
		return (NULL);
	while (*hdr && FUNC0((unsigned char)*++hdr))
		/* nothing */;
	return (hdr);
}