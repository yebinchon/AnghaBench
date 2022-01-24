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
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  arc_buf_t ;
typedef  int /*<<< orphan*/  arc_buf_hdr_t ;
typedef  int /*<<< orphan*/  arc_buf_contents_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZIO_COMPRESS_OFF ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

arc_buf_t *
FUNC8(spa_t *spa, void *tag, arc_buf_contents_t type, int32_t size)
{
	arc_buf_hdr_t *hdr = FUNC6(FUNC7(spa), size, size,
	    ZIO_COMPRESS_OFF, type);
	FUNC0(!FUNC2(FUNC1(hdr)));

	arc_buf_t *buf = NULL;
	FUNC3(FUNC4(hdr, tag, B_FALSE, B_FALSE, &buf));
	FUNC5(buf);

	return (buf);
}