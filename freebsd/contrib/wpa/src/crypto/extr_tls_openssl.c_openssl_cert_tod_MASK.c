#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ stack_index_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_3__ {int /*<<< orphan*/  policyid; } ;
typedef  TYPE_1__ POLICYINFO ;
typedef  int /*<<< orphan*/  CERTIFICATEPOLICIES ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  NID_certificate_policies ; 
 int FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC6(X509 *cert)
{
	CERTIFICATEPOLICIES *ext;
	stack_index_t i;
	char buf[100];
	int res;
	int tod = 0;

	ext = FUNC1(cert, NID_certificate_policies, NULL, NULL);
	if (!ext)
		return 0;

	for (i = 0; i < FUNC3(ext); i++) {
		POLICYINFO *policy;

		policy = FUNC4(ext, i);
		res = FUNC0(buf, sizeof(buf), policy->policyid, 0);
		if (res < 0 || (size_t) res >= sizeof(buf))
			continue;
		FUNC5(MSG_DEBUG, "OpenSSL: Certificate Policy %s", buf);
		if (FUNC2(buf, "1.3.6.1.4.1.40808.1.3.1") == 0)
			tod = 1;
	}

	return tod;
}