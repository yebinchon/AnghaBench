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
struct regional {int dummy; } ;
struct nsec3_cached_hash {size_t b32_len; int /*<<< orphan*/  b32; int /*<<< orphan*/  hash_len; int /*<<< orphan*/  hash; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct regional*,scalar_t__,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct regional* region, sldns_buffer* buf, 
	struct nsec3_cached_hash* c)
{
	int r;
	FUNC4(buf);
	r = FUNC2(c->hash, c->hash_len,
		(char*)FUNC3(buf), FUNC5(buf));
	if(r < 1) {
		FUNC0("b32_ntop_extended_hex: error in encoding: %d", r);
		return 0;
	}
	c->b32_len = (size_t)r;
	c->b32 = FUNC1(region, FUNC3(buf), 
		c->b32_len);
	if(!c->b32)
		return 0;
	return 1;
}