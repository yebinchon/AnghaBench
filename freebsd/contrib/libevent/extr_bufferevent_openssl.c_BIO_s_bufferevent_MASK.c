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
 int /*<<< orphan*/  BIO_TYPE_LIBEVENT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_bufferevent_ctrl ; 
 int /*<<< orphan*/  bio_bufferevent_free ; 
 int /*<<< orphan*/  bio_bufferevent_new ; 
 int /*<<< orphan*/  bio_bufferevent_puts ; 
 int /*<<< orphan*/  bio_bufferevent_read ; 
 int /*<<< orphan*/  bio_bufferevent_write ; 
 int /*<<< orphan*/ * methods_bufferevent ; 

__attribute__((used)) static BIO_METHOD *
FUNC7(void)
{
	if (methods_bufferevent == NULL) {
		methods_bufferevent = FUNC0(BIO_TYPE_LIBEVENT, "bufferevent");
		if (methods_bufferevent == NULL)
			return NULL;
		FUNC6(methods_bufferevent, bio_bufferevent_write);
		FUNC5(methods_bufferevent, bio_bufferevent_read);
		FUNC4(methods_bufferevent, bio_bufferevent_puts);
		FUNC2(methods_bufferevent, bio_bufferevent_ctrl);
		FUNC1(methods_bufferevent, bio_bufferevent_new);
		FUNC3(methods_bufferevent, bio_bufferevent_free);
	}
	return methods_bufferevent;
}