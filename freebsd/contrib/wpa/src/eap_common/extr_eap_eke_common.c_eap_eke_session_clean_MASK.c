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
struct eap_eke_session {int /*<<< orphan*/  ka; int /*<<< orphan*/  ki; int /*<<< orphan*/  ke; int /*<<< orphan*/  shared_secret; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_EKE_MAX_HASH_LEN ; 
 int /*<<< orphan*/  EAP_EKE_MAX_KA_LEN ; 
 int /*<<< orphan*/  EAP_EKE_MAX_KE_LEN ; 
 int /*<<< orphan*/  EAP_EKE_MAX_KI_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct eap_eke_session *sess)
{
	FUNC0(sess->shared_secret, 0, EAP_EKE_MAX_HASH_LEN);
	FUNC0(sess->ke, 0, EAP_EKE_MAX_KE_LEN);
	FUNC0(sess->ki, 0, EAP_EKE_MAX_KI_LEN);
	FUNC0(sess->ka, 0, EAP_EKE_MAX_KA_LEN);
}