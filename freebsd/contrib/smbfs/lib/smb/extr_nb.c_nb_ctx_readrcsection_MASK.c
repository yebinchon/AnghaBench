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
struct rcfile {int dummy; } ;
struct nb_ctx {int /*<<< orphan*/  nb_timo; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct nb_ctx*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct nb_ctx*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rcfile*,char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rcfile*,char const*,char*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char const*) ; 

int
FUNC5(struct rcfile *rcfile, struct nb_ctx *ctx,
	const char *sname, int level)
{
	char *p;
	int error;

	if (level > 1)
		return EINVAL;
	FUNC2(rcfile, sname, "nbtimeout", &ctx->nb_timo);
	FUNC3(rcfile, sname, "nbns", &p);
	if (p) {
		error = FUNC0(ctx, p);
		if (error) {
			FUNC4("invalid address specified in the section %s", 0, sname);
			return error;
		}
	}
	FUNC3(rcfile, sname, "nbscope", &p);
	if (p)
		FUNC1(ctx, p);
	return 0;
}