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
 int /*<<< orphan*/  FUNC0 (char*,size_t,size_t,char const) ; 
 char const* quotable_chars ; 
 char const* replace_chars ; 
 char* FUNC1 (char const*,char const) ; 

__attribute__((used)) static size_t
FUNC2(const char *s, char *out, size_t idx, size_t len, int display)
{
    const char *p, *q;
    for(p = s; *p && idx < len; p++){
	q = FUNC1(quotable_chars, *p);
	if (q && display) {
	    FUNC0(out, idx, len, replace_chars[q - quotable_chars]);
	} else if (q) {
	    FUNC0(out, idx, len, '\\');
	    FUNC0(out, idx, len, replace_chars[q - quotable_chars]);
	}else
	    FUNC0(out, idx, len, *p);
    }
    if(idx < len)
	out[idx] = '\0';
    return idx;
}