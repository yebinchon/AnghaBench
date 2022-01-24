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
typedef  int /*<<< orphan*/  xo_ssize_t ;
typedef  int /*<<< orphan*/  xo_handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static const char *
FUNC2 (xo_handle_t *xop, const char *name, xo_ssize_t nlen)
{
    if (name == NULL || FUNC0(name[0]) || name[0] == '_')
        return "";

    FUNC1(xop, "invalid XML tag name: '%.*s'", nlen, name);
    return "_";
}