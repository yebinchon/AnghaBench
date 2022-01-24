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
struct lsa6_hdr {int /*<<< orphan*/  ls_stateid; int /*<<< orphan*/  ls_type; int /*<<< orphan*/  ls_length; int /*<<< orphan*/  ls_age; int /*<<< orphan*/  ls_seq; int /*<<< orphan*/  ls_router; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(netdissect_options *ndo,
                  register const struct lsa6_hdr *lshp, const u_char *dataend)
{
	if ((const u_char *)(lshp + 1) > dataend)
		goto trunc;
	FUNC3(lshp->ls_type);
	FUNC3(lshp->ls_seq);

	FUNC2((ndo, "\n\t  Advertising Router %s, seq 0x%08x, age %us, length %u",
               FUNC4(ndo, &lshp->ls_router),
               FUNC1(&lshp->ls_seq),
               FUNC0(&lshp->ls_age),
               FUNC0(&lshp->ls_length)-(u_int)sizeof(struct lsa6_hdr)));

	FUNC5(ndo, FUNC0(&lshp->ls_type), &lshp->ls_stateid);

	return (0);
trunc:
	return (1);
}