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
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char const*) ; 
 size_t FUNC9 (char*,char*) ; 

__attribute__((used)) static int
FUNC10 (krb5_context context, const char *name)
{
    const char *fn;
    FILE *fp;
    char buf[256];
    int ret = 1;
    char *slavefile = NULL;

    if (FUNC0(&slavefile, "%d/slaves", FUNC6(context)) == -1
	|| slavefile == NULL)
	FUNC1(1, "out of memory");

    fn = FUNC7(context,
					NULL,
					slavefile,
					"kdc",
					"iprop-acl",
					NULL);

    fp = FUNC4 (fn, "r");
    FUNC5(slavefile);
    if (fp == NULL)
	return 1;
    while (FUNC3(buf, sizeof(buf), fp) != NULL) {
	buf[FUNC9(buf, "\r\n")] = '\0';
	if (FUNC8 (buf, name) == 0) {
	    ret = 0;
	    break;
	}
    }
    FUNC2 (fp);
    return ret;
}