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
struct config_strlist {int dummy; } ;
struct config_file {int num_tags; } ;
struct acl_list {int /*<<< orphan*/  region; } ;
struct acl_addr {size_t tag_datas_size; struct config_strlist** tag_datas; } ;

/* Variables and functions */
 struct acl_addr* FUNC0 (struct acl_list*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct config_strlist**,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct config_strlist*) ; 
 int FUNC3 (struct config_file*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC7(struct acl_list* acl, struct config_file* cfg,
	const char* str, const char* tag, const char* data)
{
	struct acl_addr* node;
	int tagid;
	char* dupdata;
	if(!(node=FUNC0(acl, str)))
		return 0;
	/* allocate array if not yet */
	if(!node->tag_datas) {
		node->tag_datas = (struct config_strlist**)FUNC5(
			acl->region, sizeof(*node->tag_datas)*cfg->num_tags);
		if(!node->tag_datas) {
			FUNC4("out of memory");
			return 0;
		}
		node->tag_datas_size = (size_t)cfg->num_tags;
	}
	/* parse tag */
	if((tagid=FUNC3(cfg, tag)) == -1) {
		FUNC4("cannot parse tag (define-tag it): %s %s", str, tag);
		return 0;
	}
	if((size_t)tagid >= node->tag_datas_size) {
		FUNC4("tagid too large for array %s %s", str, tag);
		return 0;
	}

	/* check data? */
	if(!FUNC2(data, node->tag_datas[tagid])) {
		FUNC4("cannot parse access-control-tag data: %s %s '%s'",
			str, tag, data);
		return 0;
	}

	dupdata = FUNC6(acl->region, data);
	if(!dupdata) {
		FUNC4("out of memory");
		return 0;
	}
	if(!FUNC1(acl->region,
		&(node->tag_datas[tagid]), dupdata)) {
		FUNC4("out of memory");
		return 0;
	}
	return 1;
}