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
typedef  int /*<<< orphan*/  block128_f ;
typedef  int /*<<< orphan*/  GCM128_CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

GCM128_CONTEXT *FUNC2(void *key, block128_f block)
{
    GCM128_CONTEXT *ret;

    if ((ret = FUNC1(sizeof(*ret))) != NULL)
        FUNC0(ret, key, block);

    return ret;
}