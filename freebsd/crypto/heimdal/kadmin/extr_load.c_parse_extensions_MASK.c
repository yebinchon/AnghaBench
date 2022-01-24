#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {int len; int /*<<< orphan*/ * val; } ;
typedef  TYPE_1__ HDB_extensions ;
typedef  int /*<<< orphan*/  HDB_extension ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int FUNC2 (void*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (char*,void*,scalar_t__) ; 
 void* FUNC5 (scalar_t__) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 char* FUNC9 (char**,char*) ; 

__attribute__((used)) static int
FUNC10(char *str, HDB_extensions **e)
{
    char *p;
    int ret;

    if(FUNC7(str, "-") == 0 || *str == '\0') {
	*e = NULL;
	return 0;
    }
    *e = FUNC1(1, sizeof(**e));

    p = FUNC9(&str, ":");

    while (p) {
	HDB_extension ext;
	ssize_t len;
	void *d;

	len = FUNC8(p);
	d = FUNC5(len);

	len = FUNC4(p, d, len);
	if (len < 0) {
	    FUNC3(d);
	    return -1;
	}

	ret = FUNC2(d, len, &ext, NULL);
	FUNC3(d);
	if (ret)
	    return -1;
	d = FUNC6((*e)->val, ((*e)->len + 1) * sizeof((*e)->val[0]));
	if (d == NULL)
	    FUNC0();
	(*e)->val = d;
	(*e)->val[(*e)->len] = ext;
	(*e)->len++;

	p = FUNC9(&str, ":");
    }

    return 0;
}