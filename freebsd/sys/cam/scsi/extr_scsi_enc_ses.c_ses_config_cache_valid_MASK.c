#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_7__ {TYPE_2__* cfg_page; } ;
typedef  TYPE_3__ ses_cache_t ;
struct TYPE_5__ {int /*<<< orphan*/  const* gen_code; } ;
struct TYPE_6__ {TYPE_1__ hdr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC1(ses_cache_t *ses_cache, const uint8_t *gen_code)
{
	uint32_t cache_gc;
	uint32_t cur_gc;

	if (ses_cache->cfg_page == NULL)
		return (0);

	cache_gc = FUNC0(ses_cache->cfg_page->hdr.gen_code);
	cur_gc   = FUNC0(gen_code);
	return (cache_gc == cur_gc);
}