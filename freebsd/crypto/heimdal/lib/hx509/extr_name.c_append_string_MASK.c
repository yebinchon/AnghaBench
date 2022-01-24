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
 int /*<<< orphan*/  Q_RFC2253 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 char* FUNC3 (char const*,size_t,int /*<<< orphan*/ ,size_t*) ; 
 char* FUNC4 (char*,size_t) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6(char **str, size_t *total_len, const char *ss,
	      size_t len, int quote)
{
    char *s, *qs;

    if (quote)
	qs = FUNC3(ss, len, Q_RFC2253, &len);
    else
	qs = FUNC5(ss);

    s = FUNC4(*str, len + *total_len + 1);
    if (s == NULL)
	FUNC0("allocation failure"); /* XXX */
    FUNC2(s + *total_len, qs, len);
    if (qs != ss)
	FUNC1(qs);
    s[*total_len + len] = '\0';
    *str = s;
    *total_len += len;
    return 0;
}