#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t len; struct hx509_collector* data; } ;
struct hx509_collector {TYPE_1__ val; scalar_t__ certs; scalar_t__ unenvelop_certs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hx509_collector*) ; 
 int /*<<< orphan*/  FUNC1 (struct hx509_collector) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 

void
FUNC3(struct hx509_collector *c)
{
    size_t i;

    if (c->unenvelop_certs)
	FUNC2(&c->unenvelop_certs);
    if (c->certs)
	FUNC2(&c->certs);
    for (i = 0; i < c->val.len; i++)
	FUNC1(c->val.data[i]);
    if (c->val.data)
	FUNC0(c->val.data);
    FUNC0(c);
}