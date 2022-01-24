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
struct wpabuf {int dummy; } ;
struct ikev2_hdr {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 struct ikev2_hdr* FUNC2 (struct wpabuf*) ; 

void FUNC3(struct wpabuf *msg)
{
	struct ikev2_hdr *hdr;

	/* Update lenth field in HDR */
	hdr = FUNC2(msg);
	FUNC0(hdr->length, FUNC1(msg));
}