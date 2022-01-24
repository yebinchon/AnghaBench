#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ expr; struct TYPE_8__* friendlyname; struct TYPE_8__* eku; struct TYPE_8__* issuer_name; struct TYPE_8__* serial; } ;
typedef  TYPE_1__ hx509_query ;
typedef  int /*<<< orphan*/  hx509_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC6(hx509_context context, hx509_query *q)
{
    if (q == NULL)
	return;

    if (q->serial) {
	FUNC1(q->serial);
	FUNC3(q->serial);
    }
    if (q->issuer_name) {
	FUNC4(q->issuer_name);
	FUNC3(q->issuer_name);
    }
    if (q->eku) {
	FUNC2(q->eku);
	FUNC3(q->eku);
    }
    if (q->friendlyname)
	FUNC3(q->friendlyname);
    if (q->expr)
	FUNC0(q->expr);

    FUNC5(q, 0, sizeof(*q));
    FUNC3(q);
}