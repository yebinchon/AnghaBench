#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ntlm_name ;
typedef  TYPE_2__* ntlm_cred ;
struct TYPE_10__ {int /*<<< orphan*/  domain; int /*<<< orphan*/  key; int /*<<< orphan*/  username; } ;
struct TYPE_9__ {int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_2__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_1__* const,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__* const,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(const ntlm_name target_name,
			ntlm_cred *rcred)
{
    ntlm_cred cred;
    int ret;

    cred = FUNC0(1, sizeof(*cred));
    if (cred == NULL)
	return ENOMEM;

    ret = FUNC3(target_name, &cred->username, &cred->key);
    if (ret)
	ret = FUNC2(target_name, &cred->username, &cred->key);
    if (ret) {
	FUNC1(cred);
	return ret;
    }

    cred->domain = FUNC4(target_name->domain);
    *rcred = cred;

    return ret;
}