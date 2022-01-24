#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int type; int /*<<< orphan*/  members; struct TYPE_6__* subtype; } ;
typedef  TYPE_1__ Type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  TBitString 129 
#define  TTag 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,char const*) ; 

void
FUNC4 (const Type *t, const char *gen_name)
{
    switch(t->type) {
    case TTag:
	FUNC4(t->subtype, gen_name);
	break;
    case TBitString :
	if (!FUNC0(t->members)) {
	    FUNC1 (t, gen_name);
	    FUNC2 (t, gen_name);
	    FUNC3 (t, gen_name);
	}
	break;
    default :
	break;
    }
}