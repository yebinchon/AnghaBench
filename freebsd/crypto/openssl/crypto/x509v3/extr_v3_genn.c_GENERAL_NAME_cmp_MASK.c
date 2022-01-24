#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  rid; int /*<<< orphan*/  ip; int /*<<< orphan*/  dirn; int /*<<< orphan*/  ia5; int /*<<< orphan*/  otherName; int /*<<< orphan*/  other; } ;
struct TYPE_6__ {int type; TYPE_1__ d; } ;
typedef  TYPE_2__ GENERAL_NAME ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  GEN_DIRNAME 136 
#define  GEN_DNS 135 
#define  GEN_EDIPARTY 134 
#define  GEN_EMAIL 133 
#define  GEN_IPADD 132 
#define  GEN_OTHERNAME 131 
#define  GEN_RID 130 
#define  GEN_URI 129 
#define  GEN_X400 128 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(GENERAL_NAME *a, GENERAL_NAME *b)
{
    int result = -1;

    if (!a || !b || a->type != b->type)
        return -1;
    switch (a->type) {
    case GEN_X400:
    case GEN_EDIPARTY:
        result = FUNC2(a->d.other, b->d.other);
        break;

    case GEN_OTHERNAME:
        result = FUNC4(a->d.otherName, b->d.otherName);
        break;

    case GEN_EMAIL:
    case GEN_DNS:
    case GEN_URI:
        result = FUNC1(a->d.ia5, b->d.ia5);
        break;

    case GEN_DIRNAME:
        result = FUNC5(a->d.dirn, b->d.dirn);
        break;

    case GEN_IPADD:
        result = FUNC0(a->d.ip, b->d.ip);
        break;

    case GEN_RID:
        result = FUNC3(a->d.rid, b->d.rid);
        break;
    }
    return result;
}