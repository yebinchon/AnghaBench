#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int length; unsigned int* components; } ;
typedef  TYPE_1__ heim_oid ;
typedef  TYPE_2__* gss_OID ;
struct TYPE_10__ {int /*<<< orphan*/  length; int /*<<< orphan*/  elements; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(gss_OID oid_enc, gss_OID prefix_enc, unsigned *suffix)
{
    int ret;
    heim_oid oid;
    heim_oid prefix;

    *suffix = 0;

    ret = FUNC1(oid_enc->elements, oid_enc->length,
		      &oid, NULL);
    if (ret) {
	return 0;
    }

    ret = FUNC1(prefix_enc->elements, prefix_enc->length,
		      &prefix, NULL);
    if (ret) {
	FUNC0(&oid);
	return 0;
    }

    ret = 0;

    if (oid.length - 1 == prefix.length) {
	*suffix = oid.components[oid.length - 1];
	oid.length--;
	ret = (FUNC2(&oid, &prefix) == 0);
	oid.length++;
    }

    FUNC0(&oid);
    FUNC0(&prefix);

    return ret;
}