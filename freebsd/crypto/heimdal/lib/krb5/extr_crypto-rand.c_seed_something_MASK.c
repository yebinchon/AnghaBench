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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  seedfile ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  ENTROPY_NEEDED ; 
 int O_BINARY ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,double) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (char*,int) ; 
 scalar_t__ FUNC10 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int
FUNC12(void)
{
    char buf[1024], seedfile[256];

    /* If there is a seed file, load it. But such a file cannot be trusted,
       so use 0 for the entropy estimate */
    if (FUNC2(seedfile, sizeof(seedfile))) {
	int fd;
	fd = FUNC9(seedfile, O_RDONLY | O_BINARY | O_CLOEXEC);
	if (fd >= 0) {
	    ssize_t ret;
	    FUNC11(fd);
	    ret = FUNC10(fd, buf, sizeof(buf));
	    if (ret > 0)
		FUNC0(buf, ret, 0.0);
	    FUNC5(fd);
	} else
	    seedfile[0] = '\0';
    } else
	seedfile[0] = '\0';

    /* Calling RAND_status() will try to use /dev/urandom if it exists so
       we do not have to deal with it. */
    if (FUNC3() != 1) {
#ifndef _WIN32
#ifndef OPENSSL_NO_EGD
	krb5_context context;
	const char *p;

	/* Try using egd */
	if (!FUNC8(&context)) {
	    p = FUNC6(context, NULL, "libdefaults",
				       "egd_socket", NULL);
	    if (p != NULL)
		FUNC1(p, ENTROPY_NEEDED);
	    FUNC7(context);
	}
#endif
#else
	/* TODO: Once a Windows CryptoAPI RAND method is defined, we
	   can use that and failover to another method. */
#endif
    }

    if (FUNC3() == 1)	{
	/* Update the seed file */
	if (seedfile[0])
	    FUNC4(seedfile);

	return 0;
    } else
	return -1;
}