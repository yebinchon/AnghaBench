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
struct sae_data {int send_confirm; TYPE_1__* tmp; int /*<<< orphan*/  peer_commit_scalar; } ;
struct TYPE_2__ {int /*<<< orphan*/  peer_commit_element_ffc; int /*<<< orphan*/  own_commit_element_ffc; int /*<<< orphan*/  own_commit_scalar; int /*<<< orphan*/  peer_commit_element_ecc; int /*<<< orphan*/  own_commit_element_ecc; scalar_t__ ec; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHA256_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sae_data*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sae_data*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int) ; 

void FUNC4(struct sae_data *sae, struct wpabuf *buf)
{
	const u8 *sc;

	if (sae->tmp == NULL)
		return;

	/* Send-Confirm */
	sc = FUNC2(buf, 0);
	FUNC3(buf, sae->send_confirm);
	if (sae->send_confirm < 0xffff)
		sae->send_confirm++;

	if (sae->tmp->ec)
		FUNC0(sae, sc, sae->tmp->own_commit_scalar,
				   sae->tmp->own_commit_element_ecc,
				   sae->peer_commit_scalar,
				   sae->tmp->peer_commit_element_ecc,
				   FUNC2(buf, SHA256_MAC_LEN));
	else
		FUNC1(sae, sc, sae->tmp->own_commit_scalar,
				   sae->tmp->own_commit_element_ffc,
				   sae->peer_commit_scalar,
				   sae->tmp->peer_commit_element_ffc,
				   FUNC2(buf, SHA256_MAC_LEN));
}