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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct mgmt_body_t {size_t reason_code; } ;
typedef  int /*<<< orphan*/  pbody ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ IEEE802_11_REASON_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,scalar_t__) ; 
 size_t NUM_REASONS ; 
 int /*<<< orphan*/  FUNC3 (struct mgmt_body_t*,int /*<<< orphan*/ ,int) ; 
 char** reason_text ; 

__attribute__((used)) static int
FUNC4(netdissect_options *ndo,
                const u_char *p, u_int length)
{
	struct mgmt_body_t  pbody;

	FUNC3(&pbody, 0, sizeof(pbody));

	if (!FUNC2(*p, IEEE802_11_REASON_LEN))
		return 0;
	if (length < IEEE802_11_REASON_LEN)
		return 0;
	pbody.reason_code = FUNC0(p);

	FUNC1((ndo, ": %s",
	    (pbody.reason_code < NUM_REASONS)
		? reason_text[pbody.reason_code]
		: "Reserved"));

	return 1;
}