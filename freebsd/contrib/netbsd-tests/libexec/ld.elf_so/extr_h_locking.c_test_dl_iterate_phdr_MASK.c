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
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  RTLD_LAZY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dl_iterate_phdr_cb ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (void*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ sleep_fini ; 
 scalar_t__ sleep_init ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  test_dl_iterate_phdr_helper ; 
 int /*<<< orphan*/ * tls_callback_sym ; 

__attribute__((used)) static void
FUNC6(void)
{
	pthread_t t;
	void *dso;
	sleep_init = 0;
	sleep_fini = 0;
	if ((dso = FUNC2("libh_helper_dso2.so", RTLD_LAZY)) == NULL) {
		FUNC4(stderr, "opening helper failed\n");
		FUNC0(1);
	}
	tls_callback_sym = FUNC3(dso, "tls_callback");
	if (tls_callback_sym == NULL) {
		FUNC4(stderr, "bad helper\n");
		FUNC0(1);
	}
	FUNC5(&t, NULL, test_dl_iterate_phdr_helper, NULL);
	if (FUNC1(dl_iterate_phdr_cb, NULL))
		FUNC0(1);
	FUNC0(0);
}