#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zstream_t ;
struct TYPE_4__ {int /*<<< orphan*/ * zf_dnode; int /*<<< orphan*/  zf_rwlock; int /*<<< orphan*/  zf_stream; } ;
typedef  TYPE_1__ zfetch_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(zfetch_t *zf)
{
	zstream_t *zs;

	FUNC0(!FUNC1(&zf->zf_rwlock));

	FUNC6(&zf->zf_rwlock, RW_WRITER);
	while ((zs = FUNC4(&zf->zf_stream)) != NULL)
		FUNC2(zf, zs);
	FUNC7(&zf->zf_rwlock);
	FUNC3(&zf->zf_stream);
	FUNC5(&zf->zf_rwlock);

	zf->zf_dnode = NULL;
}