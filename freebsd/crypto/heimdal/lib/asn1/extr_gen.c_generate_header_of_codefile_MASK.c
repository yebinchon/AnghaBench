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
 int /*<<< orphan*/  STEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char**,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * codefile ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* header ; 
 int /*<<< orphan*/  logfile ; 
 char* orig_filename ; 
 char* privheader ; 

void
FUNC7(const char *name)
{
    char *filename = NULL;

    if (codefile != NULL)
	FUNC0();

    if (FUNC1 (&filename, "%d_%s.x", STEM, name) < 0 || filename == NULL)
	FUNC3(1, "malloc");
    codefile = FUNC4 (filename, "w");
    if (codefile == NULL)
	FUNC2 (1, "fopen %s", filename);
    FUNC5(&logfile, "%s ", filename);
    FUNC6(filename);
    filename = NULL;
    FUNC5 (codefile,
	     "/* Generated from %s */\n"
	     "/* Do not edit */\n\n"
	     "#define  ASN1_LIB\n\n"
	     "#include <stdio.h>\n"
	     "#include <stdlib.h>\n"
	     "#include <time.h>\n"
	     "#include <string.h>\n"
	     "#include <errno.h>\n"
	     "#include <limits.h>\n"
	     "#include <krb5-types.h>\n",
	     orig_filename);

    FUNC5 (codefile,
	     "#include <%s>\n"
	     "#include <%s>\n",
	     header, privheader);
    FUNC5 (codefile,
	     "#include <asn1_err.h>\n"
	     "#include <der.h>\n"
	     "#include <der-private.h>\n"
	     "#include <asn1-template.h>\n"
	     "#include <parse_units.h>\n\n");

}