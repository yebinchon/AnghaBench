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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wpabuf {int dummy; } ;
struct p2ps_advertisement {int /*<<< orphan*/  svc_name; int /*<<< orphan*/  config_methods; int /*<<< orphan*/  id; int /*<<< orphan*/  hash; struct p2ps_advertisement* next; } ;
struct p2p_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ MAX_SVC_ADV_IE_LEN ; 
 size_t MAX_SVC_ADV_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ P2PS_HASH_LEN ; 
 int /*<<< orphan*/  P2PS_WILD_HASH_STR ; 
 int /*<<< orphan*/  P2P_ATTR_ADVERTISED_SERVICE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__ const*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__* FUNC2 (struct wpabuf*) ; 
 scalar_t__ FUNC3 (struct wpabuf*,struct p2p_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__**,scalar_t__**,size_t*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,scalar_t__*) ; 
 scalar_t__ FUNC5 (struct p2p_data*) ; 
 scalar_t__ FUNC6 (struct p2p_data*,scalar_t__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__ const*,scalar_t__) ; 
 struct wpabuf* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 scalar_t__* FUNC10 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,int /*<<< orphan*/ ) ; 

void FUNC13(struct wpabuf *buf, struct p2p_data *p2p,
				  u8 hash_count, const u8 *hash,
				  struct p2ps_advertisement *adv_list)
{
	struct p2ps_advertisement *adv;
	int p2ps_wildcard;
	size_t total_len;
	struct wpabuf *tmp_buf = NULL;
	u8 *pos, *attr_len, *ie_len = NULL;

	if (!adv_list || !hash || !hash_count)
		return;

	FUNC7(MSG_DEBUG, "P2PS: Probe Request service hash values",
		    hash, hash_count * P2PS_HASH_LEN);
	p2ps_wildcard = FUNC6(p2p, hash, hash_count) &&
		FUNC5(p2p);

	/* Allocate temp buffer, allowing for overflow of 1 instance */
	tmp_buf = FUNC8(MAX_SVC_ADV_IE_LEN + 256 + P2PS_HASH_LEN);
	if (!tmp_buf)
		return;

	/*
	 * Attribute data can be split into a number of IEs. Start with the
	 * first IE and the attribute headers here.
	 */
	ie_len = FUNC2(tmp_buf);

	total_len = 0;

	FUNC12(tmp_buf, P2P_ATTR_ADVERTISED_SERVICE);
	attr_len = FUNC10(tmp_buf, sizeof(u16));
	FUNC0(attr_len, (u16) total_len);
	FUNC4(tmp_buf, ie_len);
	pos = FUNC10(tmp_buf, 0);

	if (p2ps_wildcard) {
		/* org.wi-fi.wfds match found */
		FUNC3(tmp_buf, p2p, 0, 0, P2PS_WILD_HASH_STR,
					 &ie_len, &pos, &total_len, attr_len);
	}

	/* add advertised service info of matching services */
	for (adv = adv_list; adv && total_len <= MAX_SVC_ADV_LEN;
	     adv = adv->next) {
		const u8 *test = hash;
		u8 i;

		for (i = 0; i < hash_count; i++) {
			/* exact name hash match */
			if (FUNC1(test, adv->hash, P2PS_HASH_LEN) == 0 &&
			    FUNC3(tmp_buf, p2p,
						     adv->id,
						     adv->config_methods,
						     adv->svc_name,
						     &ie_len, &pos,
						     &total_len,
						     attr_len))
				break;

			test += P2PS_HASH_LEN;
		}
	}

	if (total_len)
		FUNC11(buf, tmp_buf);
	FUNC9(tmp_buf);
}