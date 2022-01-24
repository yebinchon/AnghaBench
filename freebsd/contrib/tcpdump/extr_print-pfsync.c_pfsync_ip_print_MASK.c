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
struct pfsync_header {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ PFSYNC_HDRLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pfsync_header*,int /*<<< orphan*/  const*,scalar_t__) ; 

void
FUNC2(netdissect_options *ndo , const u_char *bp, u_int len)
{
	struct pfsync_header *hdr = (struct pfsync_header *)bp;

	if (len < PFSYNC_HDRLEN)
		FUNC0((ndo, "[|pfsync]"));
	else
		FUNC1(ndo, hdr, bp + sizeof(struct pfsync_header),
		    len - sizeof(struct pfsync_header));
}