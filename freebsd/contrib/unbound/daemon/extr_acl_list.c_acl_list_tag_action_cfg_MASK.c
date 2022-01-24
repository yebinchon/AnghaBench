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
typedef  scalar_t__ uint8_t ;
struct config_file {int num_tags; } ;
struct acl_list {int /*<<< orphan*/  region; } ;
struct acl_addr {size_t tag_actions_size; scalar_t__* tag_actions; } ;
typedef  enum localzone_type { ____Placeholder_localzone_type } localzone_type ;

/* Variables and functions */
 struct acl_addr* FUNC0 (struct acl_list*,char const*) ; 
 int FUNC1 (struct config_file*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct acl_list* acl, struct config_file* cfg,
	const char* str, const char* tag, const char* action)
{
	struct acl_addr* node;
	int tagid;
	enum localzone_type t;
	if(!(node=FUNC0(acl, str)))
		return 0;
	/* allocate array if not yet */
	if(!node->tag_actions) {
		node->tag_actions = (uint8_t*)FUNC4(acl->region,
			sizeof(*node->tag_actions)*cfg->num_tags);
		if(!node->tag_actions) {
			FUNC3("out of memory");
			return 0;
		}
		node->tag_actions_size = (size_t)cfg->num_tags;
	}
	/* parse tag */
	if((tagid=FUNC1(cfg, tag)) == -1) {
		FUNC3("cannot parse tag (define-tag it): %s %s", str, tag);
		return 0;
	}
	if((size_t)tagid >= node->tag_actions_size) {
		FUNC3("tagid too large for array %s %s", str, tag);
		return 0;
	}
	if(!FUNC2(action, &t)) {
		FUNC3("cannot parse access control action type: %s %s %s",
			str, tag, action);
		return 0;
	}
	node->tag_actions[tagid] = (uint8_t)t;
	return 1;
}