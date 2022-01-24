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
struct TYPE_3__ {size_t keylen; char const* key; } ;
typedef  TYPE_1__ ucl_object_t ;

/* Variables and functions */

const char *
FUNC0 (const ucl_object_t *obj, size_t *len)
{
	if (len == NULL || obj == NULL) {
		return NULL;
	}
	*len = obj->keylen;
	return obj->key;
}