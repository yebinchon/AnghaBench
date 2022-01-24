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
typedef  int /*<<< orphan*/  BIO_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_TYPE_LIBEVENT_RWCOUNT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_rwcount_ctrl ; 
 int /*<<< orphan*/  bio_rwcount_free ; 
 int /*<<< orphan*/  bio_rwcount_new ; 
 int /*<<< orphan*/  bio_rwcount_puts ; 
 int /*<<< orphan*/  bio_rwcount_read ; 
 int /*<<< orphan*/  bio_rwcount_write ; 
 int /*<<< orphan*/ * methods_rwcount ; 

__attribute__((used)) static BIO_METHOD *
FUNC7(void)
{
	if (methods_rwcount == NULL) {
		methods_rwcount = FUNC0(BIO_TYPE_LIBEVENT_RWCOUNT, "rwcount");
		if (methods_rwcount == NULL)
			return NULL;
		FUNC6(methods_rwcount, bio_rwcount_write);
		FUNC5(methods_rwcount, bio_rwcount_read);
		FUNC4(methods_rwcount, bio_rwcount_puts);
		FUNC2(methods_rwcount, bio_rwcount_ctrl);
		FUNC1(methods_rwcount, bio_rwcount_new);
		FUNC3(methods_rwcount, bio_rwcount_free);
	}
	return methods_rwcount;
}