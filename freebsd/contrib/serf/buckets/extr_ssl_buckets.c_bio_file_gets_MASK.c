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
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(BIO *bio, char *in, int inlen)
{
    apr_file_t *file = FUNC2(bio);
    apr_status_t status;

    status = FUNC1(in, inlen, file);

    if (! status) {
        return (int)FUNC3(in);
    } else if (FUNC0(status)) {
        return 0;
    } else {
        return -1; /* Signal generic error */
    }
}