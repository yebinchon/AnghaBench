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
struct acl_list {int /*<<< orphan*/  region; } ;
struct acl_addr {size_t taglen; int /*<<< orphan*/  taglist; } ;

/* Variables and functions */
 struct acl_addr* FUNC0 (struct acl_list*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC3(struct acl_list* acl, const char* str, uint8_t* bitmap,
	size_t bitmaplen)
{
	struct acl_addr* node;
	if(!(node=FUNC0(acl, str)))
		return 0;
	node->taglen = bitmaplen;
	node->taglist = FUNC2(acl->region, bitmap, bitmaplen);
	if(!node->taglist) {
		FUNC1("out of memory");
		return 0;
	}
	return 1;
}