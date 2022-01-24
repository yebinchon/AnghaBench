#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int nid; } ;
struct TYPE_8__ {TYPE_1__* obj; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {char const* ln; int nid; } ;
typedef  TYPE_1__ ASN1_OBJECT ;
typedef  TYPE_2__ ADDED_OBJ ;

/* Variables and functions */
 int /*<<< orphan*/  ADDED_LNAME ; 
 int NID_undef ; 
 int /*<<< orphan*/  NUM_LN ; 
 unsigned int* FUNC0 (TYPE_1__ const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * added ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  ln_objs ; 
 TYPE_3__* nid_objs ; 

int FUNC2(const char *s)
{
    ASN1_OBJECT o;
    const ASN1_OBJECT *oo = &o;
    ADDED_OBJ ad, *adp;
    const unsigned int *op;

    o.ln = s;
    if (added != NULL) {
        ad.type = ADDED_LNAME;
        ad.obj = &o;
        adp = FUNC1(added, &ad);
        if (adp != NULL)
            return adp->obj->nid;
    }
    op = FUNC0(&oo, ln_objs, NUM_LN);
    if (op == NULL)
        return NID_undef;
    return nid_objs[*op].nid;
}