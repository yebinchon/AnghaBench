#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* hx509_certs ;
struct TYPE_7__ {scalar_t__ ref; int /*<<< orphan*/  ops_data; TYPE_1__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* free ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void
FUNC3(hx509_certs *certs)
{
    if (*certs) {
	if ((*certs)->ref == 0)
	    FUNC0("cert refcount == 0 on free");
	if (--(*certs)->ref > 0)
	    return;

	(*(*certs)->ops->free)(*certs, (*certs)->ops_data);
	FUNC1(*certs);
	*certs = NULL;
    }
}