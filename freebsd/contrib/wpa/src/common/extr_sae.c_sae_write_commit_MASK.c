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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct sae_data {TYPE_1__* tmp; int /*<<< orphan*/  group; } ;
struct TYPE_2__ {int prime_len; int /*<<< orphan*/  own_commit_element_ffc; int /*<<< orphan*/  own_commit_element_ecc; scalar_t__ ec; int /*<<< orphan*/  own_commit_scalar; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ WLAN_EID_EXTENSION ; 
 scalar_t__ WLAN_EID_EXT_PASSWORD_IDENTIFIER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (struct wpabuf const*) ; 
 int FUNC6 (struct wpabuf const*) ; 
 int /*<<< orphan*/ * FUNC7 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*,scalar_t__) ; 

void FUNC12(struct sae_data *sae, struct wpabuf *buf,
		      const struct wpabuf *token, const char *identifier)
{
	u8 *pos;

	if (sae->tmp == NULL)
		return;

	FUNC9(buf, sae->group); /* Finite Cyclic Group */
	if (token) {
		FUNC8(buf, token);
		FUNC3(MSG_DEBUG, "SAE: Anti-clogging token",
			    FUNC5(token), FUNC6(token));
	}
	pos = FUNC7(buf, sae->tmp->prime_len);
	FUNC0(sae->tmp->own_commit_scalar, pos,
			     sae->tmp->prime_len, sae->tmp->prime_len);
	FUNC3(MSG_DEBUG, "SAE: own commit-scalar",
		    pos, sae->tmp->prime_len);
	if (sae->tmp->ec) {
		pos = FUNC7(buf, 2 * sae->tmp->prime_len);
		FUNC1(sae->tmp->ec,
				       sae->tmp->own_commit_element_ecc,
				       pos, pos + sae->tmp->prime_len);
		FUNC3(MSG_DEBUG, "SAE: own commit-element(x)",
			    pos, sae->tmp->prime_len);
		FUNC3(MSG_DEBUG, "SAE: own commit-element(y)",
			    pos + sae->tmp->prime_len, sae->tmp->prime_len);
	} else {
		pos = FUNC7(buf, sae->tmp->prime_len);
		FUNC0(sae->tmp->own_commit_element_ffc, pos,
				     sae->tmp->prime_len, sae->tmp->prime_len);
		FUNC3(MSG_DEBUG, "SAE: own commit-element",
			    pos, sae->tmp->prime_len);
	}

	if (identifier) {
		/* Password Identifier element */
		FUNC11(buf, WLAN_EID_EXTENSION);
		FUNC11(buf, 1 + FUNC2(identifier));
		FUNC11(buf, WLAN_EID_EXT_PASSWORD_IDENTIFIER);
		FUNC10(buf, identifier);
		FUNC4(MSG_DEBUG, "SAE: own Password Identifier: %s",
			   identifier);
	}
}