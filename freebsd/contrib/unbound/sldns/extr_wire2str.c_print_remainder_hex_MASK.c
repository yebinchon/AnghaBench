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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,size_t*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (char**,size_t*,char*,char const*) ; 

__attribute__((used)) static int FUNC2(const char* pref, uint8_t** d, size_t* dlen,
	char** s, size_t* slen)
{
	int w = 0;
	w += FUNC1(s, slen, "%s", pref);
	w += FUNC0(s, slen, *d, *dlen);
	*d += *dlen;
	*dlen = 0;
	return w;
}