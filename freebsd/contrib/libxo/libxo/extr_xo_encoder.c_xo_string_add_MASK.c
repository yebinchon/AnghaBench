#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* xs_data; } ;
typedef  TYPE_1__ xo_string_node_t ;
typedef  int /*<<< orphan*/  xo_string_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xs_link ; 

__attribute__((used)) static inline xo_string_node_t *
FUNC5 (xo_string_list_t *listp, const char *str)
{
    if (listp == NULL || str == NULL)
	return NULL;

    FUNC4(listp);
    size_t len = FUNC2(str);
    xo_string_node_t *xsp;

    xsp = FUNC3(NULL, sizeof(*xsp) + len + 1);
    if (xsp) {
	FUNC1(xsp->xs_data, str, len);
	xsp->xs_data[len] = '\0';
	FUNC0(listp, xsp, xs_link);
    }

    return xsp;
}