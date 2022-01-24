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
struct ntlm_buf {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct ntlm_buf*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 size_t FUNC7 (char*,char*) ; 
 char* FUNC8 (char*) ; 
 char* FUNC9 (char*,char*,char**) ; 

__attribute__((used)) static int
FUNC10(const char *fn, const char *target_domain,
	  char **username, struct ntlm_buf *key)
{
    char *str, buf[1024];
    FILE *f;

    f = FUNC2(fn, "r");
    if (f == NULL)
	return ENOENT;
    FUNC5(f);

    while (FUNC1(buf, sizeof(buf), f) != NULL) {
	char *d, *u, *p;
	buf[FUNC7(buf, "\r\n")] = '\0';
	if (buf[0] == '#')
	    continue;
	str = NULL;
	d = FUNC9(buf, ":", &str);
	if (d && FUNC6(target_domain, d) != 0)
	    continue;
	u = FUNC9(NULL, ":", &str);
	p = FUNC9(NULL, ":", &str);
	if (u == NULL || p == NULL)
	    continue;

	*username = FUNC8(u);

	FUNC3(p, key);

	FUNC4(buf, 0, sizeof(buf));
	FUNC0(f);
	return 0;
    }
    FUNC4(buf, 0, sizeof(buf));
    FUNC0(f);
    return ENOENT;
}