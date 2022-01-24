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
typedef  int uint32_t ;
struct timeval {double tv_usec; scalar_t__ tv_sec; } ;
struct rusage {struct timeval ru_utime; } ;
struct mbuf {int m_len; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  RUSAGE_SELF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mbuf* FUNC1 (char**) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mbuf*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 int FUNC7 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct rusage*) ; 
 int FUNC10 (struct mbuf*) ; 
 int /*<<< orphan*/  optarg ; 
 int FUNC11 (struct mbuf*,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,...) ; 
 int FUNC13 () ; 
 void* random_aligned ; 
 int /*<<< orphan*/  FUNC14 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct timeval*,struct timeval*,struct timeval*) ; 

int
FUNC16(int argc, char **argv)
{
	struct rusage res;
	struct timeval tv, old_tv;
	int loops, old_sum, off, len;
#ifdef HAVE_CPU_IN_CKSUM
	int new_sum;
#endif
	long i, iterations;
	uint32_t init_sum;
	struct mbuf *m;
	bool verbose;
	int c;

	loops = 16;
	verbose = false;
	random_aligned = 0;
	iterations = 100000;

	while ((c = FUNC7(argc, argv, "i:l:u:v")) != -1) {
		switch (c) {
		case 'i':
			iterations = FUNC2(optarg);
			break;
		case 'l':
			loops = FUNC2(optarg);
			break;
		case 'u':
			random_aligned = FUNC2(optarg);
			break;
		case 'v':
			verbose = true;
			break;
		default:
			FUNC5(1, "%s [-l <loops>] [-u <unalign> [-i <iterations> "
			    "[<mbuf-size> ...]", FUNC8());
		}
	}

	for (; loops; --loops) {
		if ((m = FUNC1(argv + 4)) == NULL)
			continue;
		FUNC14(m);
		init_sum = FUNC13();
		len = FUNC10(m);

		/* force one loop over all data */
		if (loops == 1)
			off = 0;
		else
			off = len ? FUNC13() % len : 0;

		len -= off;
		old_sum = FUNC11(m, len, off, init_sum);
#ifdef HAVE_CPU_IN_CKSUM
#ifdef MBUFDUMP
		printf("m->m_len=%d len=%d off=%d\n", m->m_len, len, off);
		dump_mbuf(m, len, off);
#endif
		new_sum = cpu_in_cksum(m, len, off, init_sum);
		if (old_sum != new_sum)
			errx(1, "comparison failed: %x %x", old_sum, new_sum);
#else
		FUNC0(old_sum);
#endif

		if (iterations == 0)
			continue;

		FUNC9(RUSAGE_SELF, &res);
		tv = res.ru_utime;
		for (i = iterations; i; --i)
			(void)FUNC11(m, len, off, init_sum);
		FUNC9(RUSAGE_SELF, &res);
		FUNC15(&res.ru_utime, &tv, &old_tv);
		if (verbose)
			FUNC12("portable version: %jd.%06jd\n",
			    (intmax_t)old_tv.tv_sec, (intmax_t)old_tv.tv_usec);

#ifdef HAVE_CPU_IN_CKSUM
		getrusage(RUSAGE_SELF, &res);
		tv = res.ru_utime;
		for (i = iterations; i; --i)
			(void)cpu_in_cksum(m, len, off, init_sum);
		getrusage(RUSAGE_SELF, &res);
		timersub(&res.ru_utime, &tv, &tv);
		if (verbose) {
			printf("test version:     %jd.%06jd\n",
			    (intmax_t)tv.tv_sec, (intmax_t)tv.tv_usec);
			printf("relative time:    %3.g%%\n",
			    100 * ((double)tv.tv_sec * 1e6 + tv.tv_usec) /
			    ((double)old_tv.tv_sec * 1e6 + old_tv.tv_usec + 1));
		}
#endif
		FUNC6(m);
	}

	return 0;
}