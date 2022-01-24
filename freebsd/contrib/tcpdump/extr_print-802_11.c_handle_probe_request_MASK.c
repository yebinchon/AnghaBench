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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct mgmt_body_t {int dummy; } ;
typedef  int /*<<< orphan*/  pbody ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mgmt_body_t) ; 
 int /*<<< orphan*/  FUNC1 (struct mgmt_body_t) ; 
 int /*<<< orphan*/  FUNC2 (struct mgmt_body_t*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct mgmt_body_t*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(netdissect_options *ndo,
                     const u_char *p, u_int length)
{
	struct mgmt_body_t  pbody;
	int offset = 0;
	int ret;

	FUNC2(&pbody, 0, sizeof(pbody));

	ret = FUNC3(ndo, &pbody, p, offset, length);

	FUNC1(pbody);
	FUNC0(pbody);

	return ret;
}