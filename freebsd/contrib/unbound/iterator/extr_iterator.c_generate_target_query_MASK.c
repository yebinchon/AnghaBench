#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct module_qstate {int dummy; } ;
struct iter_qstate {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FINISHED_STATE ; 
 int /*<<< orphan*/  INIT_REQUEST_STATE ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate*,int,struct iter_qstate*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct module_qstate* qstate, struct iter_qstate* iq,
        int id, uint8_t* name, size_t namelen, uint16_t qtype, uint16_t qclass)
{
	struct module_qstate* subq;
	if(!FUNC0(name, namelen, qtype, qclass, qstate, 
		id, iq, INIT_REQUEST_STATE, FINISHED_STATE, &subq, 0))
		return 0;
	FUNC1(VERB_QUERY, "new target", name, qtype, qclass);
	return 1;
}