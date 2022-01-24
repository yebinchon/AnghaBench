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
typedef  int /*<<< orphan*/  u_int ;
struct ip6_hdr {int dummy; } ;
struct dccp_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_DCCP ; 
 int /*<<< orphan*/  FUNC0 (struct dccp_hdr const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct ip6_hdr const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(netdissect_options *ndo, const struct ip6_hdr *ip6,
	const struct dccp_hdr *dh, u_int len)
{
	return FUNC1(ndo, ip6, (const uint8_t *)(const void *)dh, len,
				FUNC0(dh, len), IPPROTO_DCCP);
}