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
struct TYPE_2__ {int /*<<< orphan*/  qclass; int /*<<< orphan*/  qname; int /*<<< orphan*/  qname_len; } ;
struct iter_qstate {TYPE_1__ qchase; } ;
struct iter_env {int /*<<< orphan*/  caps_white; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct iter_env* ie, struct iter_qstate* iq)
{
	if(!ie->caps_white) return 0; /* no whitelist, or no capsforid */
	return FUNC1(ie->caps_white, iq->qchase.qname,
		iq->qchase.qname_len, FUNC0(iq->qchase.qname),
		iq->qchase.qclass) != NULL;
}