#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {scalar_t__ pos; scalar_t__ limit; scalar_t__ full; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ lzma_dict ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static inline bool
FUNC1(lzma_dict *dict, uint8_t byte)
{
	if (FUNC0(dict->pos == dict->limit))
		return true;

	dict->buf[dict->pos++] = byte;

	if (dict->pos > dict->full)
		dict->full = dict->pos;

	return false;
}