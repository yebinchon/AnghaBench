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
struct TYPE_6__ {int /*<<< orphan*/  ids; } ;
struct TYPE_5__ {int /*<<< orphan*/ * user; int /*<<< orphan*/  zone; } ;
typedef  TYPE_1__ SXNETID ;
typedef  TYPE_2__ SXNET ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 

ASN1_OCTET_STRING *FUNC3(SXNET *sx, ASN1_INTEGER *zone)
{
    SXNETID *id;
    int i;
    for (i = 0; i < FUNC1(sx->ids); i++) {
        id = FUNC2(sx->ids, i);
        if (!FUNC0(id->zone, zone))
            return id->user;
    }
    return NULL;
}