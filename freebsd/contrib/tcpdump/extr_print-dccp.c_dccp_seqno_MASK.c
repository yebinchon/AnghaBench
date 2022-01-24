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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u_char ;
struct dccp_hdr_ext {int /*<<< orphan*/  dccph_seq; } ;
struct dccp_hdr {int /*<<< orphan*/  dccph_seq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dccp_hdr const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t FUNC3(const u_char *bp)
{
	const struct dccp_hdr *dh = (const struct dccp_hdr *)bp;
	uint64_t seqno;

	if (FUNC0(dh) != 0) {
		const struct dccp_hdr_ext *dhx = (const struct dccp_hdr_ext *)bp;
		seqno = FUNC2(dhx->dccph_seq);
	} else {
		seqno = FUNC1(dh->dccph_seq);
	}

	return seqno;
}