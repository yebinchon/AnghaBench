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
struct idrent {int dummy; } ;
struct idr {int pool_size; struct idrent* idrent_pool; } ;
struct archive_write {int /*<<< orphan*/  archive; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (struct idrent*,int) ; 

__attribute__((used)) static int
FUNC2(struct archive_write *a, struct idr *idr,
    int cnt)
{

	if (idr->pool_size < cnt) {
		void *p;
		const int bk = (1 << 7) - 1;
		int psize;

		psize = (cnt + bk) & ~bk;
		p = FUNC1(idr->idrent_pool, sizeof(struct idrent) * psize);
		if (p == NULL) {
			FUNC0(&a->archive, ENOMEM,
			    "Can't allocate memory");
			return (ARCHIVE_FATAL);
		}
		idr->idrent_pool = (struct idrent *)p;
		idr->pool_size = psize;
	}
	return (ARCHIVE_OK);
}