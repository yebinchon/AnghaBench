#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct mgmt_body_t {size_t reason_code; } ;
typedef  int /*<<< orphan*/  pbody ;
struct TYPE_5__ {scalar_t__ ndo_eflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ IEEE802_11_REASON_LEN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,scalar_t__) ; 
 size_t NUM_REASONS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (struct mgmt_body_t*,int /*<<< orphan*/ ,int) ; 
 char** reason_text ; 

__attribute__((used)) static int
FUNC5(netdissect_options *ndo,
              const uint8_t *src, const u_char *p, u_int length)
{
	struct mgmt_body_t  pbody;
	const char *reason = NULL;

	FUNC4(&pbody, 0, sizeof(pbody));

	if (!FUNC2(*p, IEEE802_11_REASON_LEN))
		return 0;
	if (length < IEEE802_11_REASON_LEN)
		return 0;
	pbody.reason_code = FUNC0(p);

	reason = (pbody.reason_code < NUM_REASONS)
			? reason_text[pbody.reason_code]
			: "Reserved";

	if (ndo->ndo_eflag) {
		FUNC1((ndo, ": %s", reason));
	} else {
		FUNC1((ndo, " (%s): %s", FUNC3(ndo, src), reason));
	}
	return 1;
}