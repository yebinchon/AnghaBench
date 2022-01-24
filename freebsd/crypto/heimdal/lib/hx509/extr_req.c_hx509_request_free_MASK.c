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
typedef  TYPE_1__* hx509_request ;
struct TYPE_5__ {int /*<<< orphan*/  san; int /*<<< orphan*/  eku; int /*<<< orphan*/  key; scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC6(hx509_request *req)
{
    if ((*req)->name)
	FUNC4(&(*req)->name);
    FUNC3(&(*req)->key);
    FUNC1(&(*req)->eku);
    FUNC2(&(*req)->san);
    FUNC5(*req, 0, sizeof(**req));
    FUNC0(*req);
    *req = NULL;
}