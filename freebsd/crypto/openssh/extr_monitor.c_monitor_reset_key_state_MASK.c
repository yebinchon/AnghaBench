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

/* Variables and functions */
 int /*<<< orphan*/  MM_NOKEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hostbased_chost ; 
 int /*<<< orphan*/ * hostbased_cuser ; 
 int /*<<< orphan*/ * key_blob ; 
 scalar_t__ key_bloblen ; 
 int /*<<< orphan*/  key_blobtype ; 
 int /*<<< orphan*/ * key_opts ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(void)
{
	/* reset state */
	FUNC0(key_blob);
	FUNC0(hostbased_cuser);
	FUNC0(hostbased_chost);
	FUNC1(key_opts);
	key_blob = NULL;
	key_bloblen = 0;
	key_blobtype = MM_NOKEY;
	key_opts = NULL;
	hostbased_cuser = NULL;
	hostbased_chost = NULL;
}