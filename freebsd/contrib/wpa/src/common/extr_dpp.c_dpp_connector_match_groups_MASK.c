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
struct json_token {scalar_t__ type; int /*<<< orphan*/  string; struct json_token* sibling; struct json_token* child; } ;

/* Variables and functions */
 scalar_t__ JSON_ARRAY ; 
 scalar_t__ JSON_STRING ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (struct json_token*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct json_token* FUNC1 (struct json_token*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC3(struct json_token *own_root,
				      struct json_token *peer_root)
{
	struct json_token *groups, *token;

	groups = FUNC1(peer_root, "groups");
	if (!groups || groups->type != JSON_ARRAY) {
		FUNC2(MSG_DEBUG, "DPP: No peer groups array found");
		return 0;
	}

	for (token = groups->child; token; token = token->sibling) {
		struct json_token *id, *role;

		id = FUNC1(token, "groupId");
		if (!id || id->type != JSON_STRING) {
			FUNC2(MSG_DEBUG,
				   "DPP: Missing peer groupId string");
			continue;
		}

		role = FUNC1(token, "netRole");
		if (!role || role->type != JSON_STRING) {
			FUNC2(MSG_DEBUG,
				   "DPP: Missing peer groups::netRole string");
			continue;
		}
		FUNC2(MSG_DEBUG,
			   "DPP: peer connector group: groupId='%s' netRole='%s'",
			   id->string, role->string);
		if (FUNC0(own_root, id->string,
						   role->string)) {
			FUNC2(MSG_DEBUG,
				   "DPP: Compatible group/netRole in own connector");
			return 1;
		}
	}

	return 0;
}