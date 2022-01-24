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
typedef  int /*<<< orphan*/  u8 ;
struct p2p_srv_bonjour {int /*<<< orphan*/  query; } ;
typedef  int /*<<< orphan*/  str_srv ;
typedef  int /*<<< orphan*/  str_rx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct p2p_srv_bonjour *bsrv, const u8 *query,
			       size_t query_len)
{
	char str_rx[256], str_srv[256];

	if (query_len < 3 || FUNC5(bsrv->query) < 3)
		return 0; /* Too short to include DNS Type and Version */
	if (FUNC0(query + query_len - 3,
		      FUNC4(bsrv->query) + FUNC5(bsrv->query) - 3,
		      3) != 0)
		return 0; /* Mismatch in DNS Type or Version */
	if (query_len == FUNC5(bsrv->query) &&
	    FUNC0(query, FUNC3(bsrv->query), query_len - 3) == 0)
		return 1; /* Binary match */

	if (FUNC2(str_rx, sizeof(str_rx), query, query_len - 3,
				  0))
		return 0; /* Failed to uncompress query */
	if (FUNC2(str_srv, sizeof(str_srv),
				  FUNC3(bsrv->query),
				  FUNC5(bsrv->query) - 3, 0))
		return 0; /* Failed to uncompress service */

	return FUNC1(str_rx, str_srv) == 0;
}