#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ element; } ;
struct TYPE_9__ {scalar_t__ element; } ;
struct TYPE_8__ {size_t len; TYPE_4__* val; } ;
typedef  TYPE_1__ GeneralNames ;
typedef  TYPE_2__ GeneralName ;
typedef  int /*<<< orphan*/  Certificate ;

/* Variables and functions */
 int HX509_EXTENSION_NOT_FOUND ; 
 int FUNC0 (int /*<<< orphan*/  const*,size_t*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_2__ const*,TYPE_4__*,int*) ; 

__attribute__((used)) static int
FUNC3(const GeneralName *n, const Certificate *c,
	       int *same, int *match)
{
    GeneralNames sa;
    int ret;
    size_t i, j;

    i = 0;
    do {
	ret = FUNC0(c, &i, &sa);
	if (ret == HX509_EXTENSION_NOT_FOUND) {
	    ret = 0;
	    break;
	} else if (ret != 0)
	    break;

	for (j = 0; j < sa.len; j++) {
	    if (n->element == sa.val[j].element) {
		*same = 1;
		ret = FUNC2(n, &sa.val[j], match);
	    }
	}
	FUNC1(&sa);
    } while (1);
    return ret;
}