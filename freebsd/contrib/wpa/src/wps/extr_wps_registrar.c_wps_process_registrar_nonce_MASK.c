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
struct wps_data {int /*<<< orphan*/  nonce_r; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WPS_NONCE_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct wps_data *wps, const u8 *r_nonce)
{
	if (r_nonce == NULL) {
		FUNC1(MSG_DEBUG, "WPS: No Registrar Nonce received");
		return -1;
	}

	if (FUNC0(wps->nonce_r, r_nonce, WPS_NONCE_LEN) != 0) {
		FUNC1(MSG_DEBUG, "WPS: Invalid Registrar Nonce received");
		return -1;
	}

	return 0;
}