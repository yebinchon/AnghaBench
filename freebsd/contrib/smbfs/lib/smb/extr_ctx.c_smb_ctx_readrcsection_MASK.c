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
struct TYPE_2__ {int /*<<< orphan*/  ioc_retrycount; int /*<<< orphan*/  ioc_timeout; } ;
struct smb_ctx {TYPE_1__ ct_ssn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char*,char**) ; 
 int FUNC2 (struct smb_ctx*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct smb_ctx*,char*) ; 
 int FUNC4 (struct smb_ctx*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_ctx*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char const*) ; 
 int /*<<< orphan*/  smb_rc ; 

__attribute__((used)) static int
FUNC7(struct smb_ctx *ctx, const char *sname, int level)
{
	char *p;
	int error;

	if (level >= 0) {
		FUNC1(smb_rc, sname, "charsets", &p);
		if (p) {
			error = FUNC2(ctx, p);
			if (error)
				FUNC6("charset specification in the section '%s' ignored", error, sname);
		}
	}
	if (level <= 1) {
		FUNC0(smb_rc, sname, "timeout", &ctx->ct_ssn.ioc_timeout);
		FUNC0(smb_rc, sname, "retry_count", &ctx->ct_ssn.ioc_retrycount);
	}
	if (level == 1) {
		FUNC1(smb_rc, sname, "addr", &p);
		if (p) {
			error = FUNC4(ctx, p);
			if (error) {
				FUNC6("invalid address specified in the section %s", 0, sname);
				return error;
			}
		}
	}
	if (level >= 2) {
		FUNC1(smb_rc, sname, "password", &p);
		if (p)
			FUNC3(ctx, p);
	}
	FUNC1(smb_rc, sname, "workgroup", &p);
	if (p)
		FUNC5(ctx, p);
	return 0;
}