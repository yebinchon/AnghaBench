#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sae_data {TYPE_1__* tmp; } ;
struct TYPE_2__ {int prime_len; scalar_t__ ec; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 size_t SHA256_MAC_LEN ; 
 scalar_t__ FUNC0 (scalar_t__ const*,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct sae_data *sae, const u8 **pos,
				   const u8 *end, const u8 **token,
				   size_t *token_len)
{
	size_t scalar_elem_len, tlen;
	const u8 *elem;

	if (token)
		*token = NULL;
	if (token_len)
		*token_len = 0;

	scalar_elem_len = (sae->tmp->ec ? 3 : 2) * sae->tmp->prime_len;
	if (scalar_elem_len >= (size_t) (end - *pos))
		return; /* No extra data beyond peer scalar and element */

	/* It is a bit difficult to parse this now that there is an
	 * optional variable length Anti-Clogging Token field and
	 * optional variable length Password Identifier element in the
	 * frame. We are sending out fixed length Anti-Clogging Token
	 * fields, so use that length as a requirement for the received
	 * token and check for the presence of possible Password
	 * Identifier element based on the element header information.
	 */
	tlen = end - (*pos + scalar_elem_len);

	if (tlen < SHA256_MAC_LEN) {
		FUNC2(MSG_DEBUG,
			   "SAE: Too short optional data (%u octets) to include our Anti-Clogging Token",
			   (unsigned int) tlen);
		return;
	}

	elem = *pos + scalar_elem_len;
	if (FUNC0(elem, end)) {
		 /* Password Identifier element takes out all available
		  * extra octets, so there can be no Anti-Clogging token in
		  * this frame. */
		return;
	}

	elem += SHA256_MAC_LEN;
	if (FUNC0(elem, end)) {
		 /* Password Identifier element is included in the end, so
		  * remove its length from the Anti-Clogging token field. */
		tlen -= 2 + elem[1];
	}

	FUNC1(MSG_DEBUG, "SAE: Anti-Clogging Token", *pos, tlen);
	if (token)
		*token = *pos;
	if (token_len)
		*token_len = tlen;
	*pos += tlen;
}