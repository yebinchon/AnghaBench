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
struct import {char const* module; struct import* next; } ;

/* Variables and functions */
 struct import* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  headerfile ; 
 struct import* imports ; 

void
FUNC2 (const char *module)
{
    struct import *tmp = FUNC0 (sizeof(*tmp));

    tmp->module = module;
    tmp->next   = imports;
    imports     = tmp;

    FUNC1 (headerfile, "#include <%s_asn1.h>\n", module);
}