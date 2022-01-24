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
struct TYPE_3__ {int ncol; int /*<<< orphan*/  nline; } ;
struct FILE_INFO {TYPE_1__ errpos; TYPE_1__ tokpos; } ;
struct TYPE_4__ {int /*<<< orphan*/  no_errors; scalar_t__ err_pos; scalar_t__ err_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ MAXLINE ; 
 struct FILE_INFO* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,char const*) ; 
 TYPE_2__ remote_config ; 
 int FUNC3 (scalar_t__,scalar_t__,char*,int,char const*) ; 

void
FUNC4(
	const char *msg
	)
{
	int retval;
	struct FILE_INFO * ip_ctx;

	ip_ctx = FUNC0();
	ip_ctx->errpos = ip_ctx->tokpos;

	FUNC2(LOG_ERR, "line %d column %d %s",
		ip_ctx->errpos.nline, ip_ctx->errpos.ncol, msg);
	if (!FUNC1()) {
		/* Save the error message in the correct buffer */
		retval = FUNC3(remote_config.err_msg + remote_config.err_pos,
				  MAXLINE - remote_config.err_pos,
				  "column %d %s",
				  ip_ctx->errpos.ncol, msg);

		/* Increment the value of err_pos */
		if (retval > 0)
			remote_config.err_pos += retval;

		/* Increment the number of errors */
		++remote_config.no_errors;
	}
}