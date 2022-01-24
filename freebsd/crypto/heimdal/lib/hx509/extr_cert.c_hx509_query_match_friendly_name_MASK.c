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
struct TYPE_3__ {int /*<<< orphan*/  match; int /*<<< orphan*/ * friendlyname; } ;
typedef  TYPE_1__ hx509_query ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HX509_QUERY_MATCH_FRIENDLY_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 

int
FUNC2(hx509_query *q, const char *name)
{
    if (q->friendlyname)
	FUNC0(q->friendlyname);
    q->friendlyname = FUNC1(name);
    if (q->friendlyname == NULL)
	return ENOMEM;
    q->match |= HX509_QUERY_MATCH_FRIENDLY_NAME;
    return 0;
}