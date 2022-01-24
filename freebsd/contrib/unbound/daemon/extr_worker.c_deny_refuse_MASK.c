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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  unwanted_queries; scalar_t__ extended; } ;
struct worker {TYPE_1__ stats; } ;
struct comm_reply {int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
struct comm_point {int /*<<< orphan*/  buffer; } ;
typedef  enum acl_access { ____Placeholder_acl_access } acl_access ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LDNS_RCODE_REFUSED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC2 (struct comm_reply*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct worker*) ; 

__attribute__((used)) static int
FUNC11(struct comm_point* c, enum acl_access acl,
	enum acl_access deny, enum acl_access refuse,
	struct worker* worker, struct comm_reply* repinfo)
{
	if(acl == deny) {
		FUNC2(repinfo);
		if(worker->stats.extended)
			worker->stats.unwanted_queries++;
		return 0;
	} else if(acl == refuse) {
		FUNC3(VERB_ALGO, "refused query from",
			&repinfo->addr, repinfo->addrlen);
		FUNC4(VERB_ALGO, "refuse", c->buffer);
		if(worker->stats.extended)
			worker->stats.unwanted_queries++;
		if(FUNC10(c->buffer, worker) == -1) {
			FUNC2(repinfo);
			return 0; /* discard this */
		}
		FUNC7(c->buffer, LDNS_HEADER_SIZE);
		FUNC9(c->buffer, 4, 
			(uint8_t*)"\0\0\0\0\0\0\0\0", 8);
		FUNC0(FUNC5(c->buffer));
		FUNC1(FUNC5(c->buffer), 
			LDNS_RCODE_REFUSED);
		FUNC8(c->buffer, LDNS_HEADER_SIZE);
		FUNC6(c->buffer);
		return 1;
	}

	return -1;
}