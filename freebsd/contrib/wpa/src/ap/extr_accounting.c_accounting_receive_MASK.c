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
struct radius_msg {int dummy; } ;
struct TYPE_2__ {scalar_t__ code; } ;
typedef  int /*<<< orphan*/  RadiusRxResult ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ RADIUS_CODE_ACCOUNTING_RESPONSE ; 
 int /*<<< orphan*/  RADIUS_RX_INVALID_AUTHENTICATOR ; 
 int /*<<< orphan*/  RADIUS_RX_PROCESSED ; 
 int /*<<< orphan*/  RADIUS_RX_UNKNOWN ; 
 TYPE_1__* FUNC0 (struct radius_msg*) ; 
 scalar_t__ FUNC1 (struct radius_msg*,int /*<<< orphan*/  const*,size_t,struct radius_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static RadiusRxResult
FUNC3(struct radius_msg *msg, struct radius_msg *req,
		   const u8 *shared_secret, size_t shared_secret_len,
		   void *data)
{
	if (FUNC0(msg)->code != RADIUS_CODE_ACCOUNTING_RESPONSE) {
		FUNC2(MSG_INFO, "Unknown RADIUS message code");
		return RADIUS_RX_UNKNOWN;
	}

	if (FUNC1(msg, shared_secret, shared_secret_len, req, 0)) {
		FUNC2(MSG_INFO, "Incoming RADIUS packet did not have correct Authenticator - dropped");
		return RADIUS_RX_INVALID_AUTHENTICATOR;
	}

	return RADIUS_RX_PROCESSED;
}