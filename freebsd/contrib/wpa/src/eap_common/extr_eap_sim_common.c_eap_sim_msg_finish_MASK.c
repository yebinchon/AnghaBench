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
struct wpabuf {int dummy; } ;
struct eap_sim_msg {int mac; struct wpabuf* buf; } ;
struct eap_hdr {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int EAP_TYPE_AKA_PRIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sim_msg*) ; 
 scalar_t__ FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 struct eap_hdr* FUNC6 (struct wpabuf*) ; 

struct wpabuf * FUNC7(struct eap_sim_msg *msg, int type,
				   const u8 *k_aut,
				   const u8 *extra, size_t extra_len)
{
	struct eap_hdr *eap;
	struct wpabuf *buf;

	if (msg == NULL)
		return NULL;

	eap = FUNC6(msg->buf);
	eap->length = FUNC2(FUNC5(msg->buf));

#if defined(EAP_AKA_PRIME) || defined(EAP_SERVER_AKA_PRIME)
	if (k_aut && msg->mac && type == EAP_TYPE_AKA_PRIME) {
		eap_sim_add_mac_sha256(k_aut, (u8 *) wpabuf_head(msg->buf),
				       wpabuf_len(msg->buf),
				       (u8 *) wpabuf_mhead(msg->buf) +
				       msg->mac, extra, extra_len);
	} else
#endif /* EAP_AKA_PRIME || EAP_SERVER_AKA_PRIME */
	if (k_aut && msg->mac) {
		FUNC0(k_aut, (u8 *) FUNC4(msg->buf),
				FUNC5(msg->buf),
				(u8 *) FUNC6(msg->buf) + msg->mac,
				extra, extra_len);
	}

	buf = msg->buf;
	FUNC3(msg);
	return buf;
}