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
typedef  int /*<<< orphan*/  u16 ;
struct wpabuf {int dummy; } ;
struct teap_tlv_hdr {void* length; void* tlv_type; } ;
typedef  int /*<<< orphan*/  hdr ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,struct teap_tlv_hdr*,int) ; 

void FUNC2(struct wpabuf *buf, u16 type, u16 len)
{
	struct teap_tlv_hdr hdr;

	hdr.tlv_type = FUNC0(type);
	hdr.length = FUNC0(len);
	FUNC1(buf, &hdr, sizeof(hdr));
}