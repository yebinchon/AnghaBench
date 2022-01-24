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
struct xaddr {scalar_t__ af; } ;

/* Variables and functions */
 int FUNC0 (struct xaddr*,struct xaddr const*,struct xaddr*) ; 
 int FUNC1 (struct xaddr*,struct xaddr const*) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,struct xaddr*) ; 

__attribute__((used)) static int
FUNC3(const struct xaddr *host, const struct xaddr *net, u_int masklen)
{
	struct xaddr tmp_mask, tmp_result;

	if (host->af != net->af)
		return -1;

	if (FUNC2(host->af, masklen, &tmp_mask) == -1)
		return -1;
	if (FUNC0(&tmp_result, host, &tmp_mask) == -1)
		return -1;
	return FUNC1(&tmp_result, net);
}