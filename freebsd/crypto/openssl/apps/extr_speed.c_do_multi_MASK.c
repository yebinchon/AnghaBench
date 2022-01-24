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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int* FUNC2 (int,char*) ; 
 double FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 double** dsa_results ; 
 int FUNC6 (int) ; 
 double** ecdh_results ; 
 double** ecdsa_results ; 
 double** eddsa_results ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int*) ; 
 int mr ; 
 int FUNC14 (int*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 double** results ; 
 double** rsa_results ; 
 int /*<<< orphan*/  FUNC16 (char**,char*) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC17 (char*,char) ; 
 scalar_t__ FUNC18 (char*,char*,int) ; 
 scalar_t__ usertime ; 

__attribute__((used)) static int FUNC19(int multi, int size_num)
{
    int n;
    int fd[2];
    int *fds;
    static char sep[] = ":";

    fds = FUNC2(sizeof(*fds) * multi, "fd buffer for do_multi");
    for (n = 0; n < multi; ++n) {
        if (FUNC14(fd) == -1) {
            FUNC1(bio_err, "pipe failure\n");
            FUNC7(1);
        }
        FUNC10(stdout);
        (void)FUNC0(bio_err);
        if (FUNC12()) {
            FUNC5(fd[1]);
            fds[n] = fd[0];
        } else {
            FUNC5(fd[0]);
            FUNC5(1);
            if (FUNC6(fd[1]) == -1) {
                FUNC1(bio_err, "dup failed\n");
                FUNC7(1);
            }
            FUNC5(fd[1]);
            mr = 1;
            usertime = 0;
            FUNC13(fds);
            return 0;
        }
        FUNC15("Forked child %d\n", n);
    }

    /* for now, assume the pipe is long enough to take all the output */
    for (n = 0; n < multi; ++n) {
        FILE *f;
        char buf[1024];
        char *p;

        f = FUNC9(fds[n], "r");
        while (FUNC11(buf, sizeof(buf), f)) {
            p = FUNC17(buf, '\n');
            if (p)
                *p = '\0';
            if (buf[0] != '+') {
                FUNC1(bio_err,
                           "Don't understand line '%s' from child %d\n", buf,
                           n);
                continue;
            }
            FUNC15("Got: %s from %d\n", buf, n);
            if (FUNC18(buf, "+F:", 3) == 0) {
                int alg;
                int j;

                p = buf + 3;
                alg = FUNC4(FUNC16(&p, sep));
                FUNC16(&p, sep);
                for (j = 0; j < size_num; ++j)
                    results[alg][j] += FUNC3(FUNC16(&p, sep));
            } else if (FUNC18(buf, "+F2:", 4) == 0) {
                int k;
                double d;

                p = buf + 4;
                k = FUNC4(FUNC16(&p, sep));
                FUNC16(&p, sep);

                d = FUNC3(FUNC16(&p, sep));
                rsa_results[k][0] += d;

                d = FUNC3(FUNC16(&p, sep));
                rsa_results[k][1] += d;
            }
# ifndef OPENSSL_NO_DSA
            else if (FUNC18(buf, "+F3:", 4) == 0) {
                int k;
                double d;

                p = buf + 4;
                k = FUNC4(FUNC16(&p, sep));
                FUNC16(&p, sep);

                d = FUNC3(FUNC16(&p, sep));
                dsa_results[k][0] += d;

                d = FUNC3(FUNC16(&p, sep));
                dsa_results[k][1] += d;
            }
# endif
# ifndef OPENSSL_NO_EC
            else if (FUNC18(buf, "+F4:", 4) == 0) {
                int k;
                double d;

                p = buf + 4;
                k = FUNC4(FUNC16(&p, sep));
                FUNC16(&p, sep);

                d = FUNC3(FUNC16(&p, sep));
                ecdsa_results[k][0] += d;

                d = FUNC3(FUNC16(&p, sep));
                ecdsa_results[k][1] += d;
            } else if (FUNC18(buf, "+F5:", 4) == 0) {
                int k;
                double d;

                p = buf + 4;
                k = FUNC4(FUNC16(&p, sep));
                FUNC16(&p, sep);

                d = FUNC3(FUNC16(&p, sep));
                ecdh_results[k][0] += d;
            } else if (FUNC18(buf, "+F6:", 4) == 0) {
                int k;
                double d;

                p = buf + 4;
                k = FUNC4(FUNC16(&p, sep));
                FUNC16(&p, sep);

                d = FUNC3(FUNC16(&p, sep));
                eddsa_results[k][0] += d;

                d = FUNC3(FUNC16(&p, sep));
                eddsa_results[k][1] += d;
            }
# endif

            else if (FUNC18(buf, "+H:", 3) == 0) {
                ;
            } else
                FUNC1(bio_err, "Unknown type '%s' from child %d\n", buf,
                           n);
        }

        FUNC8(f);
    }
    FUNC13(fds);
    return 1;
}