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
struct json_token {char* name; struct json_token* sibling; struct json_token* child; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,size_t,char*,int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (size_t,int) ; 
 size_t FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct json_token *token, int depth,
			     char *buf, size_t buflen)
{
	size_t len;
	int ret;

	if (!token)
		return;
	len = FUNC3(buf);
	ret = FUNC1(buf + len, buflen - len, "[%d:%s:%s]",
			  depth, FUNC0(token->type),
			  token->name ? token->name : "");
	if (FUNC2(buflen - len, ret)) {
		buf[len] = '\0';
		return;
	}
	FUNC4(token->child, depth + 1, buf, buflen);
	FUNC4(token->sibling, depth, buf, buflen);
}