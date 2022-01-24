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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * bio_keylog ; 

__attribute__((used)) static void FUNC2(const SSL *ssl, const char *line)
{
    if (bio_keylog == NULL) {
        FUNC1(&bio_err, "Keylog callback is invoked without valid file!\n");
        return;
    }

    /*
     * There might be concurrent writers to the keylog file, so we must ensure
     * that the given line is written at once.
     */
    FUNC1(bio_keylog, "%s\n", line);
    (void)FUNC0(bio_keylog);
}