#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* mz_chunk; void* mz_normflags; void* mz_salt; void* mz_block_type; } ;
typedef  TYPE_2__ mzap_phys_t ;
struct TYPE_4__ {int /*<<< orphan*/  mze_cd; void* mze_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*) ; 
 size_t MZAP_ENT_LEN ; 

__attribute__((used)) static void
FUNC2(mzap_phys_t *buf, size_t size)
{
	buf->mz_block_type = FUNC1(buf->mz_block_type);
	buf->mz_salt = FUNC1(buf->mz_salt);
	buf->mz_normflags = FUNC1(buf->mz_normflags);
	int max = (size / MZAP_ENT_LEN) - 1;
	for (int i = 0; i < max; i++) {
		buf->mz_chunk[i].mze_value =
		    FUNC1(buf->mz_chunk[i].mze_value);
		buf->mz_chunk[i].mze_cd =
		    FUNC0(buf->mz_chunk[i].mze_cd);
	}
}