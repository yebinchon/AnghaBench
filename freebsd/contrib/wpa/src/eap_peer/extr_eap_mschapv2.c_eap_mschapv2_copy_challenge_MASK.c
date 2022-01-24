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
struct wpabuf {int dummy; } ;
struct eap_mschapv2_data {int /*<<< orphan*/  prev_challenge; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct eap_mschapv2_data *data,
					const struct wpabuf *reqData)
{
	/*
	 * Store a copy of the challenge message, so that it can be processed
	 * again in case retry is allowed after a possible failure.
	 */
	FUNC1(data->prev_challenge);
	data->prev_challenge = FUNC0(reqData);
}