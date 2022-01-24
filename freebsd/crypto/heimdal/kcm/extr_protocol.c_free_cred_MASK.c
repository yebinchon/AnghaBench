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
struct kcm_ntlm_cred {int /*<<< orphan*/  nthash; struct kcm_ntlm_cred* domain; struct kcm_ntlm_cred* user; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kcm_ntlm_cred*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct kcm_ntlm_cred *cred)
{
    FUNC0(cred->user);
    FUNC0(cred->domain);
    FUNC1(&cred->nthash);
    FUNC0(cred);
}