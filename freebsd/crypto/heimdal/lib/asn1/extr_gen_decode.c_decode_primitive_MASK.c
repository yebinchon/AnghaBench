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
 int /*<<< orphan*/  codefile ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*,char const*) ; 

__attribute__((used)) static void
FUNC1 (const char *typename, const char *name, const char *forwstr)
{
#if 0
    fprintf (codefile,
	     "e = decode_%s(p, len, %s, &l);\n"
	     "%s;\n",
	     typename,
	     name,
	     forwstr);
#else
    FUNC0 (codefile,
	     "e = der_get_%s(p, len, %s, &l);\n"
	     "if(e) %s;\np += l; len -= l; ret += l;\n",
	     typename,
	     name,
	     forwstr);
#endif
}