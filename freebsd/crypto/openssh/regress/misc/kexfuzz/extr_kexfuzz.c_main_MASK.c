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
struct sshkey {scalar_t__ type; } ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int C2S ; 
 scalar_t__ KEY_UNSPEC ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int S2C ; 
 int /*<<< orphan*/  SYSLOG_FACILITY_USER ; 
 int /*<<< orphan*/  SYSLOG_LEVEL_DEBUG3 ; 
 int /*<<< orphan*/  SYSLOG_LEVEL_INFO ; 
 int /*<<< orphan*/  _IONBF ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int do_debug ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct sshkey*,int*,int*,int,int,char const*,struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct sshbuf*) ; 
 struct sshbuf* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct sshkey*) ; 
 int FUNC16 (int,struct sshbuf*) ; 
 int FUNC17 (int,scalar_t__,int /*<<< orphan*/ *,struct sshkey**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC19 (char const*,char) ; 
 int /*<<< orphan*/  FUNC20 () ; 

int
FUNC21(int argc, char **argv)
{
	int ch, fd, r;
	int count_flag = 0, dump_flag = 0, replace_flag = 0;
	int packet_index = -1, direction = -1;
	int s2c = 0, c2s = 0; /* packet counts */
	const char *kex = NULL, *kpath = NULL, *data_path = NULL;
	struct sshkey *key = NULL;
	struct sshbuf *replace_data = NULL;

	FUNC11(stdout, NULL, _IONBF, 0);
	while ((ch = FUNC6(argc, argv, "hcdrvD:f:K:k:i:")) != -1) {
		switch (ch) {
		case 'h':
			FUNC20();
			return 0;
		case 'c':
			count_flag = 1;
			break;
		case 'd':
			dump_flag = 1;
			break;
		case 'r':
			replace_flag = 1;
			break;
		case 'v':
			do_debug = 1;
			break;

		case 'D':
			if (FUNC18(optarg, "s2c") == 0)
				direction = S2C;
			else if (FUNC18(optarg, "c2s") == 0)
				direction = C2S;
			else
				FUNC1("Invalid direction (-D)");
			break;
		case 'f':
			data_path = optarg;
			break;
		case 'K':
			kex = optarg;
			break;
		case 'k':
			kpath = optarg;
			break;
		case 'i':
			packet_index = FUNC0(optarg);
			if (packet_index < 0)
				FUNC1("Invalid packet index");
			break;
		default:
			FUNC1("unsupported flag");
		}
	}
	argc -= optind;
	argv += optind;

	FUNC8(argv[0], do_debug ? SYSLOG_LEVEL_DEBUG3 : SYSLOG_LEVEL_INFO,
	    SYSLOG_FACILITY_USER, 1);

	/* Must select a single mode */
	if ((count_flag + dump_flag + replace_flag) != 1)
		FUNC1("Must select one mode: -c, -d or -r");
	/* KEX type is mandatory */
	if (kex == NULL || !FUNC7(kex) || FUNC19(kex, ',') != NULL)
		FUNC1("Missing or invalid kex type (-K flag)");
	/* Valid key is mandatory */
	if (kpath == NULL)
		FUNC1("Missing private key (-k flag)");
	if ((fd = FUNC9(kpath, O_RDONLY)) == -1)
		FUNC4(1, "open %s", kpath);
	if ((r = FUNC17(fd, KEY_UNSPEC, NULL,
	    &key, NULL)) != 0)
		FUNC5(1, "Unable to load key %s: %s", kpath, FUNC12(r));
	FUNC2(fd);
	/* XXX check that it is a private key */
	/* XXX support certificates */
	if (key == NULL || key->type == KEY_UNSPEC)
		FUNC1("Invalid key file (-k flag)");

	/* Replace (fuzz) mode */
	if (replace_flag) {
		if (packet_index == -1 || direction == -1 || data_path == NULL)
			FUNC1("Replace (-r) mode must specify direction "
			    "(-D) packet index (-i) and data path (-f)");
		if ((fd = FUNC9(data_path, O_RDONLY)) == -1)
			FUNC4(1, "open %s", data_path);
		replace_data = FUNC14();
		if ((r = FUNC16(fd, replace_data)) != 0)
			FUNC5(1, "read %s: %s", data_path, FUNC12(r));
		FUNC2(fd);
	}

	/* Dump mode */
	if (dump_flag) {
		if (packet_index == -1 || direction == -1 || data_path == NULL)
			FUNC1("Dump (-d) mode must specify direction "
			    "(-D), packet index (-i) and data path (-f)");
	}

	/* Count mode needs no further flags */

	FUNC3(kex, key, &c2s, &s2c,
	    direction, packet_index,
	    dump_flag ? data_path : NULL,
	    replace_flag ? replace_data : NULL);
	FUNC15(key);
	FUNC13(replace_data);

	if (count_flag) {
		FUNC10("S2C: %d\n", s2c);
		FUNC10("C2S: %d\n", c2s);
	}

	return 0;
}