#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  in4; } ;
struct TYPE_5__ {int /*<<< orphan*/  in4; } ;
struct TYPE_4__ {int /*<<< orphan*/  in4; } ;
struct diocskerneldump_arg {int kda_index; int kda_encryption; int kda_encryptedkeysize; struct diocskerneldump_arg* kda_encryptedkey; void* kda_af; TYPE_3__ kda_gateway; TYPE_2__ kda_client; TYPE_1__ kda_server; int /*<<< orphan*/  kda_iface; int /*<<< orphan*/  kda_compression; } ;
struct addrinfo {scalar_t__ ai_addr; int /*<<< orphan*/  ai_protocol; void* ai_family; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 void* AF_INET ; 
 int /*<<< orphan*/  DIOCSKERNELDUMP ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  EX_OK ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int KDA_APPEND ; 
 int KDA_REMOVE ; 
 int /*<<< orphan*/  KERNELDUMP_COMP_GZIP ; 
 int /*<<< orphan*/  KERNELDUMP_COMP_NONE ; 
 int /*<<< orphan*/  KERNELDUMP_COMP_ZSTD ; 
 int KERNELDUMP_ENC_AES_256_CBC ; 
 int KERNELDUMP_ENC_CHACHA20 ; 
 int KERNELDUMP_ENC_NONE ; 
 int PATH_MAX ; 
 char* _PATH_DEVNULL ; 
 char* _PATH_NETDUMP ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct diocskerneldump_arg*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct diocskerneldump_arg*,int) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct diocskerneldump_arg*) ; 
 int /*<<< orphan*/  FUNC10 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char const*,struct diocskerneldump_arg*) ; 
 int FUNC13 (char const*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int FUNC14 (int,char**,char*) ; 
 scalar_t__ FUNC15 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int,int /*<<< orphan*/ ,struct diocskerneldump_arg*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (char const*,char*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC21 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 scalar_t__ FUNC23 (char*,char*) ; 
 int FUNC24 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int verbose ; 

int
FUNC26(int argc, char *argv[])
{
	char dumpdev[PATH_MAX];
	struct diocskerneldump_arg ndconf, *kdap;
	struct addrinfo hints, *res;
	const char *dev, *pubkeyfile, *server, *client, *gateway;
	int ch, error, fd, cipher;
	bool gzip, list, netdump, zstd, insert, rflag;
	uint8_t ins_idx;

	gzip = list = netdump = zstd = insert = rflag = false;
	kdap = NULL;
	pubkeyfile = NULL;
	server = client = gateway = NULL;
	ins_idx = KDA_APPEND;
	cipher = KERNELDUMP_ENC_NONE;

	while ((ch = FUNC14(argc, argv, "C:c:g:i:k:lrs:vZz")) != -1)
		switch ((char)ch) {
		case 'C':
			if (FUNC22(optarg, "chacha") == 0 ||
			    FUNC22(optarg, "chacha20") == 0)
				cipher = KERNELDUMP_ENC_CHACHA20;
			else if (FUNC22(optarg, "aes-cbc") == 0 ||
			    FUNC22(optarg, "aes256-cbc") == 0)
				cipher = KERNELDUMP_ENC_AES_256_CBC;
			else
				FUNC5(EX_USAGE, "Unrecognized cipher algorithm "
				    "'%s'", optarg);
			break;
		case 'c':
			client = optarg;
			break;
		case 'g':
			gateway = optarg;
			break;
		case 'i':
			{
			int i;

			i = FUNC0(optarg);
			if (i < 0 || i >= KDA_APPEND - 1)
				FUNC5(EX_USAGE,
				    "-i index must be between zero and %d.",
				    (int)KDA_APPEND - 2);
			insert = true;
			ins_idx = i;
			}
			break;
		case 'k':
			pubkeyfile = optarg;
			break;
		case 'l':
			list = true;
			break;
		case 'r':
			rflag = true;
			break;
		case 's':
			server = optarg;
			break;
		case 'v':
			verbose = 1;
			break;
		case 'Z':
			zstd = true;
			break;
		case 'z':
			gzip = true;
			break;
		default:
			FUNC25();
		}

	if (gzip && zstd)
		FUNC5(EX_USAGE, "The -z and -Z options are mutually exclusive.");

	if (insert && rflag)
		FUNC5(EX_USAGE, "The -i and -r options are mutually exclusive.");

	argc -= optind;
	argv += optind;

	if (list) {
		FUNC18();
		FUNC6(EX_OK);
	}

	if (argc != 1)
		FUNC25();

#ifdef HAVE_CRYPTO
	if (cipher != KERNELDUMP_ENC_NONE && pubkeyfile == NULL)
		errx(EX_USAGE, "-C option requires a public key file.");
#else
	if (pubkeyfile != NULL)
		FUNC5(EX_UNAVAILABLE,"Unable to use the public key."
				    " Recompile dumpon with OpenSSL support.");
#endif

	if (server != NULL && client != NULL) {
		dev = _PATH_NETDUMP;
		netdump = true;
	} else if (server == NULL && client == NULL && argc > 0) {
		if (FUNC23(argv[0], "off") == 0) {
			rflag = true;
			dev = _PATH_DEVNULL;
		} else
			dev = argv[0];
		netdump = false;
	} else
		FUNC25();

	fd = FUNC20(dev, dumpdev);
	if (!netdump && !gzip && !rflag)
		FUNC2(fd, dumpdev);

	kdap = &ndconf;
	FUNC1(kdap, sizeof(*kdap));

	if (rflag)
		kdap->kda_index = KDA_REMOVE;
	else
		kdap->kda_index = ins_idx;

	kdap->kda_compression = KERNELDUMP_COMP_NONE;
	if (zstd)
		kdap->kda_compression = KERNELDUMP_COMP_ZSTD;
	else if (gzip)
		kdap->kda_compression = KERNELDUMP_COMP_GZIP;

	if (netdump) {
		FUNC19(&hints, 0, sizeof(hints));
		hints.ai_family = AF_INET;
		hints.ai_protocol = IPPROTO_UDP;
		res = NULL;
		error = FUNC13(server, NULL, &hints, &res);
		if (error != 0)
			FUNC3(1, "%s", FUNC11(error));
		if (res == NULL)
			FUNC5(1, "failed to resolve '%s'", server);
		server = FUNC16(
		    ((struct sockaddr_in *)(void *)res->ai_addr)->sin_addr);
		FUNC10(res);

		if (FUNC24(ndconf.kda_iface, argv[0],
		    sizeof(ndconf.kda_iface)) >= sizeof(ndconf.kda_iface))
			FUNC5(EX_USAGE, "invalid interface name '%s'", argv[0]);
		if (FUNC15(server, &ndconf.kda_server.in4) == 0)
			FUNC5(EX_USAGE, "invalid server address '%s'", server);
		if (FUNC15(client, &ndconf.kda_client.in4) == 0)
			FUNC5(EX_USAGE, "invalid client address '%s'", client);

		if (gateway == NULL) {
			gateway = FUNC8(argv[0]);
			if (gateway == NULL) {
				if (verbose)
					FUNC21(
				    "failed to look up gateway for %s\n",
					    server);
				gateway = server;
			}
		}
		if (FUNC15(gateway, &ndconf.kda_gateway.in4) == 0)
			FUNC5(EX_USAGE, "invalid gateway address '%s'", gateway);
		ndconf.kda_af = AF_INET;
	}

#ifdef HAVE_CRYPTO
	if (pubkeyfile != NULL) {
		kdap->kda_encryption = cipher;
		genkey(pubkeyfile, kdap);
	}
#endif
	error = FUNC17(fd, DIOCSKERNELDUMP, kdap);
	if (error != 0)
		error = errno;
	FUNC7(kdap->kda_encryptedkey, kdap->kda_encryptedkeysize);
	FUNC9(kdap->kda_encryptedkey);
	FUNC7(kdap, sizeof(*kdap));
	if (error != 0) {
		if (netdump) {
			/*
			 * Be slightly less user-hostile for some common
			 * errors, especially as users don't have any great
			 * discoverability into which NICs support netdump.
			 */
			if (error == ENXIO)
				FUNC5(EX_OSERR, "Unable to configure netdump "
				    "because the interface's link is down.");
			else if (error == ENODEV)
				FUNC5(EX_OSERR, "Unable to configure netdump "
				    "because the interface driver does not yet "
				    "support netdump.");
		}
		FUNC4(EX_OSERR, error, "ioctl(DIOCSKERNELDUMP)");
	}

	if (verbose)
		FUNC18();

	FUNC6(EX_OK);
}