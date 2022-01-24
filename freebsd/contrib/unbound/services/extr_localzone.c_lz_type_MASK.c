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
typedef  int /*<<< orphan*/  uint8_t ;
struct rbtree_type {int dummy; } ;
struct local_zone_override {int type; } ;
struct comm_reply {int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
typedef  enum localzone_type { ____Placeholder_localzone_type } localzone_type ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 scalar_t__ FUNC0 (struct rbtree_type*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t,int,int*,char**,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum localzone_type
FUNC4(uint8_t *taglist, size_t taglen, uint8_t *taglist2, size_t taglen2,
	uint8_t *tagactions, size_t tagactionssize, enum localzone_type lzt,
	struct comm_reply* repinfo, struct rbtree_type* override_tree,
	int* tag, char** tagname, int num_tags)
{
	struct local_zone_override* lzo;	
	if(repinfo && override_tree) {
		lzo = (struct local_zone_override*)FUNC0(
			override_tree, &repinfo->addr, repinfo->addrlen);
		if(lzo && lzo->type) {
			FUNC3(VERB_ALGO, "local zone override to type %s",
				FUNC2(lzo->type));
			return lzo->type;
		}
	}
	if(!taglist || !taglist2)
		return lzt;
	return FUNC1(taglist, taglen, taglist2, taglen2,
		tagactions, tagactionssize, lzt, tag, tagname, num_tags);
}