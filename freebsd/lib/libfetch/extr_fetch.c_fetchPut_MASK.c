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
struct url {int /*<<< orphan*/  scheme; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SCHEME_FILE ; 
 int /*<<< orphan*/  SCHEME_FTP ; 
 int /*<<< orphan*/  SCHEME_HTTP ; 
 int /*<<< orphan*/  SCHEME_HTTPS ; 
 int /*<<< orphan*/  URL_BAD_SCHEME ; 
 int /*<<< orphan*/ * FUNC0 (struct url*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (struct url*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (struct url*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

FILE *
FUNC5(struct url *URL, const char *flags)
{

	if (FUNC3(URL->scheme, SCHEME_FILE) == 0)
		return (FUNC1(URL, flags));
	else if (FUNC3(URL->scheme, SCHEME_FTP) == 0)
		return (FUNC0(URL, flags));
	else if (FUNC3(URL->scheme, SCHEME_HTTP) == 0)
		return (FUNC2(URL, flags));
	else if (FUNC3(URL->scheme, SCHEME_HTTPS) == 0)
		return (FUNC2(URL, flags));
	FUNC4(URL_BAD_SCHEME);
	return (NULL);
}