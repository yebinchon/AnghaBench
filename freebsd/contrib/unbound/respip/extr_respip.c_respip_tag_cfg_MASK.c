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
struct respip_set {int /*<<< orphan*/  region; } ;
struct resp_addr {size_t taglen; scalar_t__ taglist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 struct resp_addr* FUNC3 (struct respip_set*,char const*,int) ; 

__attribute__((used)) static int
FUNC4(struct respip_set* set, const char* ipstr,
	const uint8_t* taglist, size_t taglen)
{
	struct resp_addr* node;

	if(!(node=FUNC3(set, ipstr, 1)))
		return 0;
	if(node->taglist) {
		FUNC1("duplicate response-address-tag for '%s', overridden.",
			ipstr);
	}
	node->taglist = FUNC2(set->region, taglist, taglen);
	if(!node->taglist) {
		FUNC0("out of memory");
		return 0;
	}
	node->taglen = taglen;
	return 1;
}