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
struct ikev2_responder_data {int /*<<< orphan*/  i_spi; } ;
struct ikev2_payloads {int /*<<< orphan*/  nonce_len; int /*<<< orphan*/  nonce; int /*<<< orphan*/  ke_len; int /*<<< orphan*/  ke; int /*<<< orphan*/  sa_len; int /*<<< orphan*/  sa; } ;
struct ikev2_hdr {int /*<<< orphan*/  i_spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  IKEV2_SPI_LEN ; 
 scalar_t__ FUNC0 (struct ikev2_responder_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ikev2_responder_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ikev2_responder_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ikev2_responder_data *data,
				 const struct ikev2_hdr *hdr,
				 struct ikev2_payloads *pl)
{
	if (FUNC2(data, pl->sa, pl->sa_len) < 0 ||
	    FUNC0(data, pl->ke, pl->ke_len) < 0 ||
	    FUNC1(data, pl->nonce, pl->nonce_len) < 0)
		return -1;

	FUNC3(data->i_spi, hdr->i_spi, IKEV2_SPI_LEN);

	return 0;
}