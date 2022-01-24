#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* filename; } ;
typedef  TYPE_1__ Identity ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*,size_t) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(Identity *id, Identity *private_id)
{
	const char *suffixes[] = { ".pub", "-cert.pub", NULL };
	size_t len = FUNC2(id->filename), plen = FUNC2(private_id->filename);
	size_t i, slen;

	if (FUNC1(id->filename, private_id->filename) == 0)
		return 1;
	for (i = 0; suffixes[i]; i++) {
		slen = FUNC2(suffixes[i]);
		if (len > slen && plen == len - slen &&
		    FUNC1(id->filename + (len - slen), suffixes[i]) == 0 &&
		    FUNC0(id->filename, private_id->filename, plen) == 0)
			return 1;
	}
	return 0;
}