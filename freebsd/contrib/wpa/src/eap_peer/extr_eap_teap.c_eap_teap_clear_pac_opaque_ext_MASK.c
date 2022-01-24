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
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
struct eap_teap_data {TYPE_1__ ssl; } ;
struct eap_sm {int /*<<< orphan*/  ssl_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TLS_EXT_PAC_OPAQUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct eap_sm *sm,
					 struct eap_teap_data *data)
{
	if (FUNC0(sm->ssl_ctx, data->ssl.conn,
					    TLS_EXT_PAC_OPAQUE, NULL, 0) < 0) {
		FUNC1(MSG_DEBUG,
			   "EAP-TEAP: Failed to remove PAC-Opaque TLS extension");
		return -1;
	}
	return 0;
}