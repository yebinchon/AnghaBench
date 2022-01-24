#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int z_interpose; } ;
typedef  TYPE_1__ Obj_Entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UTRACE_PRELOAD_FINISHED ; 
 char* ld_preload ; 
 TYPE_1__* FUNC1 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static int
FUNC4(void)
{
    char *p = ld_preload;
    Obj_Entry *obj;
    static const char delim[] = " \t:;";

    if (p == NULL)
	return 0;

    p += FUNC3(p, delim);
    while (*p != '\0') {
	size_t len = FUNC2(p, delim);
	char savech;

	savech = p[len];
	p[len] = '\0';
	obj = FUNC1(p, -1, NULL, 0);
	if (obj == NULL)
	    return -1;	/* XXX - cleanup */
	obj->z_interpose = true;
	p[len] = savech;
	p += len;
	p += FUNC3(p, delim);
    }
    FUNC0(UTRACE_PRELOAD_FINISHED, NULL, NULL, 0, 0, NULL);
    return 0;
}