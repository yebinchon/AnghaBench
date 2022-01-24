#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int zv_state; int /*<<< orphan*/  zv_zilog; int /*<<< orphan*/  zv_queue_mtx; int /*<<< orphan*/  zv_queue; } ;
typedef  TYPE_1__ zvol_state_t ;
struct bio {int bio_cmd; } ;

/* Variables and functions */
#define  BIO_DELETE 131 
#define  BIO_FLUSH 130 
#define  BIO_READ 129 
#define  BIO_WRITE 128 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int PDROP ; 
 int PRIBIO ; 
 int /*<<< orphan*/  ZVOL_OBJ ; 
 struct bio* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct bio*) ; 

__attribute__((used)) static void
FUNC12(void *arg)
{
	zvol_state_t *zv;
	struct bio *bp;

	FUNC7(curthread);
	FUNC6(curthread, PRIBIO);
	FUNC8(curthread);

	zv = arg;
	for (;;) {
		FUNC4(&zv->zv_queue_mtx);
		bp = FUNC0(&zv->zv_queue);
		if (bp == NULL) {
			if (zv->zv_state == 1) {
				zv->zv_state = 2;
				FUNC9(&zv->zv_state);
				FUNC5(&zv->zv_queue_mtx);
				FUNC2();
			}
			FUNC3(&zv->zv_queue, &zv->zv_queue_mtx, PRIBIO | PDROP,
			    "zvol:io", 0);
			continue;
		}
		FUNC5(&zv->zv_queue_mtx);
		switch (bp->bio_cmd) {
		case BIO_FLUSH:
			FUNC10(zv->zv_zilog, ZVOL_OBJ);
			FUNC1(bp, 0);
			break;
		case BIO_READ:
		case BIO_WRITE:
		case BIO_DELETE:
			FUNC11(bp);
			break;
		default:
			FUNC1(bp, EOPNOTSUPP);
			break;
		}
	}
}