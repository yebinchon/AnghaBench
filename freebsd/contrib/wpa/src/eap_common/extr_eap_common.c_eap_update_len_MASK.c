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
struct eap_hdr {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct wpabuf*) ; 
 struct eap_hdr* FUNC2 (struct wpabuf*) ; 

void FUNC3(struct wpabuf *msg)
{
	struct eap_hdr *hdr;
	hdr = FUNC2(msg);
	if (FUNC1(msg) < sizeof(*hdr))
		return;
	hdr->length = FUNC0(FUNC1(msg));
}