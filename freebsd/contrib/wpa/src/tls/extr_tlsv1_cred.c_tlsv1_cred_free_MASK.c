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
struct tlsv1_credentials {struct tlsv1_credentials* ocsp_stapling_response_multi; struct tlsv1_credentials* ocsp_stapling_response; struct tlsv1_credentials* dh_g; struct tlsv1_credentials* dh_p; int /*<<< orphan*/  key; int /*<<< orphan*/  cert; int /*<<< orphan*/  trusted_certs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tlsv1_credentials*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct tlsv1_credentials *cred)
{
	if (cred == NULL)
		return;

	FUNC2(cred->trusted_certs);
	FUNC2(cred->cert);
	FUNC0(cred->key);
	FUNC1(cred->dh_p);
	FUNC1(cred->dh_g);
	FUNC1(cred->ocsp_stapling_response);
	FUNC1(cred->ocsp_stapling_response_multi);
	FUNC1(cred);
}