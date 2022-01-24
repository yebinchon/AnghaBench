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
struct list_sessions_cb_ctx {char* buf; size_t buflen; int reply_len; } ;
struct fst_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct fst_group*,int /*<<< orphan*/ ,struct list_sessions_cb_ctx*) ; 
 struct fst_group* FUNC2 (char const*) ; 
 int /*<<< orphan*/  list_session_enum_cb ; 
 int FUNC3 (char*,size_t,char*) ; 

__attribute__((used)) static int FUNC4(const char *group_id, char *buf, size_t buflen)
{
	struct list_sessions_cb_ctx ctx;
	struct fst_group *g;

	g = FUNC2(group_id);
	if (!g) {
		FUNC0(MSG_WARNING, "CTRL: Cannot find group '%s'",
			   group_id);
		return FUNC3(buf, buflen, "FAIL\n");
	}

	ctx.buf = buf;
	ctx.buflen = buflen;
	ctx.reply_len = 0;

	FUNC1(g, list_session_enum_cb, &ctx);

	ctx.reply_len += FUNC3(buf + ctx.reply_len, ctx.buflen, "\n");

	return ctx.reply_len;
}