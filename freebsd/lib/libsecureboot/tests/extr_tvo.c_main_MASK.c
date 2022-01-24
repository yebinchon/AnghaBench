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
struct stat {int st_size; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  DebugVe ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 char* Skip ; 
 int /*<<< orphan*/  VE_GUESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct stat*) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 char* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (char*) ; 
 int FUNC16 () ; 
 int FUNC17 (void*) ; 
 size_t FUNC18 (void*,int,int /*<<< orphan*/ ) ; 
 void* FUNC19 (int,char*,size_t,struct stat*,int*) ; 
 size_t FUNC20 (void*,char*,int) ; 
 scalar_t__ FUNC21 (char*,int) ; 
 int FUNC22 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 scalar_t__ FUNC25 (char*,int) ; 

int
FUNC26(int argc, char *argv[])
{
	int n;
	int fd;
	int c;
	int Vflag;
	char *cp;
	char *prefix;

	prefix = NULL;
	Skip = NULL;

	n = FUNC16();
	FUNC9("Trust %d\n", n);
	Vflag = 0;

	while ((c = FUNC6(argc, argv, "dp:s:T:V")) != -1) {
		switch (c) {
		case 'd':
			DebugVe++;
			break;
		case 'p':
			prefix = optarg;
			break;
		case 's':
			Skip = optarg;
			break;
		case 'T':
			n = FUNC15(optarg);
			FUNC9("Local trust %s: %d\n", optarg, n);
			break;
		case 'V':
			Vflag = 1;
			break;
		default:
			FUNC1(1, "unknown option: -%c", c);
			break;
		}
	}

#ifdef VE_PCR_SUPPORT
	ve_pcr_updating_set(1);
#endif
	FUNC14();

	for ( ; optind < argc; optind++) {
		if (Vflag) {
			/*
			 * Simulate what loader does.
			 * verify_file should "just work"
			 */
			fd = FUNC8(argv[optind], O_RDONLY);
			if (fd > 0) {
				/*
				 * See if verify_file is happy
				 */
				int x;

				x = FUNC22(fd, argv[optind], 0, VE_GUESS);
				FUNC9("verify_file(%s) = %d\n", argv[optind], x);
				FUNC0(fd);
			}
			continue;
		}
#ifdef VE_OPENPGP_SUPPORT
		if (strstr(argv[optind], "asc")) {
			cp = (char *)verify_asc(argv[optind], 1);
			if (cp) {
				printf("Verified: %s: %.28s...\n",
				    argv[optind], cp);
				fingerprint_info_add(argv[optind],
				    prefix, Skip, cp, NULL);
			} else {
				fprintf(stderr, "%s: %s\n",
				    argv[optind], ve_error_get());
			}
		} else
#endif
		if (FUNC11(argv[optind], "sig")) {
			cp = (char *)FUNC25(argv[optind], 1);
			if (cp) {
				FUNC9("Verified: %s: %.28s...\n",
				    argv[optind], cp);
				FUNC2(argv[optind],
				    prefix, Skip, cp, NULL);
			} else {
				FUNC3(stderr, "%s: %s\n",
				    argv[optind], FUNC12());
			}
		} else if (FUNC11(argv[optind], "manifest")) {
			cp = (char *)FUNC10(argv[optind], NULL);
			if (cp) {
				FUNC2(argv[optind],
				    prefix, Skip, cp, NULL);
			}
		} else {
			fd = FUNC23(argv[optind], O_RDONLY);
			FUNC9("verify_open(%s) = %d %s\n", argv[optind], fd,
			    (fd < 0) ? FUNC12() : "");
			if (fd > 0) {
				/*
				 * Check that vectx_* can also verify the file.
				 */
				void *vp;
				char buf[BUFSIZ];
				struct stat st;
				int error;
				size_t off, n;

				FUNC4(fd, &st);
				FUNC7(fd, 0, SEEK_SET);
				off = st.st_size % 512;
				vp = FUNC19(fd, argv[optind], off,
				    &st, &error);
				if (!vp) {
					FUNC9("vectx_open(%s) failed: %d %s\n",
					    argv[optind], error,
					    FUNC12());
				} else {
					off = FUNC18(vp,
					    (st.st_size % 1024), SEEK_SET);

					if (off < st.st_size) {
						n = FUNC20(vp, buf,
						    sizeof(buf));
						if (n > 0)
							off += n;
					}
					off = FUNC18(vp, 0, SEEK_END);
					/* repeating that should be harmless */
					off = FUNC18(vp, 0, SEEK_END);
					error = FUNC17(vp);
					if (error) {
						FUNC9("vectx_close(%s) == %d %s\n",
						    argv[optind], error,
						    FUNC12());
					} else {
						FUNC9("vectx_close: Verified: %s\n",
						    argv[optind]);
					}
				}
				FUNC0(fd);
			}
		}
	}
#ifdef VE_PCR_SUPPORT
	verify_pcr_export();
	printf("pcr=%s\n", getenv("loader.ve.pcr"));
#endif
	return (0);
}