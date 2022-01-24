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
struct icl_pdu {int dummy; } ;
struct cfiscsi_session {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfiscsi_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfiscsi_session*) ; 
 struct cfiscsi_session* FUNC2 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC3 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC4 (struct icl_pdu*) ; 

__attribute__((used)) static void
FUNC5(struct icl_pdu *response)
{
	struct cfiscsi_session *cs;

	cs = FUNC2(response);

	FUNC0(cs);
	FUNC3(response);
	FUNC4(response);
	FUNC1(cs);
}