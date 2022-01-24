#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  zs_lock; } ;
typedef  TYPE_1__ zstream_t ;
struct TYPE_8__ {int /*<<< orphan*/  zf_stream; int /*<<< orphan*/  zf_rwlock; } ;
typedef  TYPE_2__ zfetch_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(zfetch_t *zf, zstream_t *zs)
{
	FUNC0(FUNC1(&zf->zf_rwlock));
	FUNC3(&zf->zf_stream, zs);
	FUNC4(&zs->zs_lock);
	FUNC2(zs, sizeof (*zs));
}