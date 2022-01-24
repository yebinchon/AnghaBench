#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* ioc_password; } ;
struct TYPE_3__ {char const* ioc_password; } ;
struct smb_ctx {TYPE_2__ ct_ssn; TYPE_1__ ct_sh; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENAMETOOLONG ; 
 scalar_t__ SMB_MAXPASSWORDLEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 

int
FUNC5(struct smb_ctx *ctx, const char *passwd)
{
	if (passwd == NULL)
		return EINVAL;
	if (FUNC3(passwd) > SMB_MAXPASSWORDLEN) {
		FUNC0("password too long", 0);
		return ENAMETOOLONG;
	}
	if (FUNC4(passwd, "$$1", 3) == 0)
		FUNC1(ctx->ct_ssn.ioc_password, passwd);
	else
		FUNC2(ctx->ct_ssn.ioc_password, passwd);
	FUNC2(ctx->ct_sh.ioc_password, ctx->ct_ssn.ioc_password);
	return 0;
}