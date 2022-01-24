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
struct eap_hdr {int identifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct eap_hdr* FUNC1 (struct wpabuf const*) ; 
 int FUNC2 (struct wpabuf const*) ; 

__attribute__((used)) static int FUNC3(const struct wpabuf *data)
{
	const struct eap_hdr *hdr;

	if (data == NULL || FUNC2(data) < sizeof(*hdr))
		return -1;

	hdr = FUNC1(data);
	FUNC0(MSG_DEBUG, "EAP: getId: id=%d", hdr->identifier);
	return hdr->identifier;
}