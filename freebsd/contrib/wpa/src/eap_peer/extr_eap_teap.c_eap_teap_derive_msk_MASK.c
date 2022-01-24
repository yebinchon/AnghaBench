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
struct eap_teap_data {int success; int /*<<< orphan*/  emsk; int /*<<< orphan*/  simck_msk; int /*<<< orphan*/  key_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct eap_teap_data *data)
{
	/* FIX: RFC 7170 does not describe whether MSK or EMSK based S-IMCK[j]
	 * is used in this derivation */
	if (FUNC1(data->simck_msk, data->key_data) < 0 ||
	    FUNC0(data->simck_msk, data->emsk) < 0)
		return -1;
	data->success = 1;
	return 0;
}