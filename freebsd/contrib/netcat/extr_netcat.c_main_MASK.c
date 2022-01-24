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
typedef  int /*<<< orphan*/  z ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct servent {char* s_name; } ;
struct option {char* member_0; int member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; } ;
struct addrinfo {int /*<<< orphan*/  ai_flags; void* ai_protocol; void* ai_socktype; scalar_t__ ai_family; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  cliaddr ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_UNIX ; 
 int /*<<< orphan*/  AI_NUMERICHOST ; 
 int Dflag ; 
 int Fflag ; 
 int /*<<< orphan*/  FreeBSD_Oflag ; 
 int INT_MAX ; 
 void* IPPROTO_TCP ; 
 void* IPPROTO_UDP ; 
 void* Iflag ; 
 int /*<<< orphan*/  MSG_PEEK ; 
 int Nflag ; 
 void* Oflag ; 
 char* Pflag ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 void* SOCK_DGRAM ; 
 void* SOCK_STREAM ; 
 int Sflag ; 
 int Tflag ; 
 int UINT_MAX ; 
 int UNIX_DG_TMP_SOCKET_SIZE ; 
 int FUNC0 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,struct sockaddr*,int) ; 
 int dflag ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ family ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC10 (int,char**,char*,struct option*,int /*<<< orphan*/ *) ; 
 struct servent* FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 void* iflag ; 
 char** ipsec_policy ; 
 int kflag ; 
 int lflag ; 
 int FUNC13 (char*,char*,struct addrinfo) ; 
 int /*<<< orphan*/  FUNC14 (char*,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC16 (char*) ; 
 int nflag ; 
 int /*<<< orphan*/  no_argument ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 char* pflag ; 
 char** portlist ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int FUNC19 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int FUNC20 (char*,char*,struct addrinfo) ; 
 int /*<<< orphan*/  FUNC21 (struct sockaddr*,int) ; 
 int rflag ; 
 int rtableid ; 
 char* sflag ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (char*,char*,struct addrinfo,char const*,char const*,struct addrinfo,int,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC24 (char*,char*) ; 
 int /*<<< orphan*/  FUNC25 (char const*,char*) ; 
 char* FUNC26 (char*) ; 
 int /*<<< orphan*/  FUNC27 (char*,char*,int) ; 
 int FUNC28 (char*) ; 
 char* FUNC29 (char**,char*) ; 
 scalar_t__ FUNC30 (char*,int /*<<< orphan*/ *,int) ; 
 void* FUNC31 (char*,int,int,char const**) ; 
 int FUNC32 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int tflag ; 
 int timeout ; 
 int FUNC33 (int) ; 
 int uflag ; 
 int FUNC34 (char*) ; 
 int FUNC35 (char*) ; 
 char* unix_dg_tmp_socket ; 
 int FUNC36 (char*) ; 
 int /*<<< orphan*/  FUNC37 (char*) ; 
 int /*<<< orphan*/  FUNC38 (int) ; 
 int vflag ; 
 int xflag ; 
 int zflag ; 

int
FUNC39(int argc, char *argv[])
{
	int ch, s, ret, socksv, ipsec_count;
	int numfibs;
	size_t intsize = sizeof(int);
	char *host, *uport;
	struct addrinfo hints;
	struct servent *sv;
	socklen_t len;
	struct sockaddr_storage cliaddr;
	char *proxy;
	const char *errstr, *proxyhost = "", *proxyport = NULL;
	struct addrinfo proxyhints;
	char unix_dg_tmp_socket_buf[UNIX_DG_TMP_SOCKET_SIZE];
	struct option longopts[] = {
		{ "no-tcpopt",	no_argument,	&FreeBSD_Oflag,	1 },
		{ NULL,		0,		NULL,		0 }
	};

	ret = 1;
	ipsec_count = 0;
	s = 0;
	socksv = 5;
	host = NULL;
	uport = NULL;
	sv = NULL;

	FUNC22(SIGPIPE, SIG_IGN);

	while ((ch = FUNC10(argc, argv,
	    "46DdEe:FhI:i:klNnoO:P:p:rSs:tT:UuV:vw:X:x:z",
	    longopts, NULL)) != -1) {
		switch (ch) {
		case '4':
			family = AF_INET;
			break;
		case '6':
			family = AF_INET6;
			break;
		case 'U':
			family = AF_UNIX;
			break;
		case 'X':
			if (FUNC24(optarg, "connect") == 0)
				socksv = -1; /* HTTP proxy CONNECT */
			else if (FUNC25(optarg, "4") == 0)
				socksv = 4; /* SOCKS v.4 */
			else if (FUNC25(optarg, "5") == 0)
				socksv = 5; /* SOCKS v.5 */
			else
				FUNC6(1, "unsupported proxy protocol");
			break;
		case 'd':
			dflag = 1;
			break;
		case 'e':
#ifdef IPSEC
			ipsec_policy[ipsec_count++ % 2] = optarg;
#else
			FUNC6(1, "IPsec support unavailable.");
#endif
			break;
		case 'E':
#ifdef IPSEC
			ipsec_policy[0] = "in  ipsec esp/transport//require";
			ipsec_policy[1] = "out ipsec esp/transport//require";
#else
			FUNC6(1, "IPsec support unavailable.");
#endif
			break;
		case 'F':
			Fflag = 1;
			break;
		case 'h':
			FUNC12();
			break;
		case 'i':
			iflag = FUNC31(optarg, 0, UINT_MAX, &errstr);
			if (errstr)
				FUNC6(1, "interval %s: %s", errstr, optarg);
			break;
		case 'k':
			kflag = 1;
			break;
		case 'l':
			lflag = 1;
			break;
		case 'N':
			Nflag = 1;
			break;
		case 'n':
			nflag = 1;
			break;
		case 'o':
			FUNC9(stderr, "option -o is deprecated.\n");
			break;
		case 'P':
			Pflag = optarg;
			break;
		case 'p':
			pflag = optarg;
			break;
		case 'r':
			rflag = 1;
			break;
		case 's':
			sflag = optarg;
			break;
		case 't':
			tflag = 1;
			break;
		case 'u':
			uflag = 1;
			break;
		case 'V':
			if (FUNC32("net.fibs", &numfibs, &intsize, NULL, 0) == -1)
				FUNC6(1, "Multiple FIBS not supported");
			rtableid = (int)FUNC31(optarg, 0,
			    numfibs - 1, &errstr);
			if (errstr)
				FUNC6(1, "rtable %s: %s", errstr, optarg);
			break;
		case 'v':
			vflag = 1;
			break;
		case 'w':
			timeout = FUNC31(optarg, 0, INT_MAX / 1000, &errstr);
			if (errstr)
				FUNC6(1, "timeout %s: %s", errstr, optarg);
			timeout *= 1000;
			break;
		case 'x':
			xflag = 1;
			if ((proxy = FUNC26(optarg)) == NULL)
				FUNC5(1, NULL);
			break;
		case 'z':
			zflag = 1;
			break;
		case 'D':
			Dflag = 1;
			break;
		case 'I':
			Iflag = FUNC31(optarg, 1, 65536 << 14, &errstr);
			if (errstr != NULL)
				FUNC6(1, "TCP receive window %s: %s",
				    errstr, optarg);
			break;
		case 'O':
			Oflag = FUNC31(optarg, 1, 65536 << 14, &errstr);
			if (errstr != NULL) {
			    if (FUNC25(errstr, "invalid") != 0)
				FUNC6(1, "TCP send window %s: %s",
				    errstr, optarg);
			}
			break;
		case 'S':
			Sflag = 1;
			break;
		case 'T':
			errstr = NULL;
			errno = 0;
			if (FUNC14(optarg, &Tflag))
				break;
			if (FUNC28(optarg) > 1 && optarg[0] == '0' &&
			    optarg[1] == 'x')
				Tflag = (int)FUNC30(optarg, NULL, 16);
			else
				Tflag = (int)FUNC31(optarg, 0, 255,
				    &errstr);
			if (Tflag < 0 || Tflag > 255 || errstr || errno)
				FUNC6(1, "illegal tos value %s", optarg);
			break;
		default:
			FUNC38(1);
		}
	}
	argc -= optind;
	argv += optind;

	/* Cruft to make sure options are clean, and used properly. */
	if (argv[0] && !argv[1] && family == AF_UNIX) {
		host = argv[0];
		uport = NULL;
	} else if (argv[0] && !argv[1]) {
		if  (!lflag)
			FUNC38(1);
		uport = argv[0];
		host = NULL;
	} else if (argv[0] && argv[1]) {
		host = argv[0];
		uport = argv[1];
	} else
		FUNC38(1);

	if (lflag && sflag)
		FUNC6(1, "cannot use -s and -l");
	if (lflag && pflag)
		FUNC6(1, "cannot use -p and -l");
	if (lflag && zflag)
		FUNC6(1, "cannot use -z and -l");
	if (!lflag && kflag)
		FUNC6(1, "must use -l with -k");

	/* Get name of temporary socket for unix datagram client */
	if ((family == AF_UNIX) && uflag && !lflag) {
		if (sflag) {
			unix_dg_tmp_socket = sflag;
		} else {
			FUNC27(unix_dg_tmp_socket_buf, "/tmp/nc.XXXXXXXXXX",
				UNIX_DG_TMP_SOCKET_SIZE);
			if (FUNC16(unix_dg_tmp_socket_buf) == NULL)
				FUNC5(1, "mktemp");
			unix_dg_tmp_socket = unix_dg_tmp_socket_buf;
		}
	}

	/* Initialize addrinfo structure. */
	if (family != AF_UNIX) {
		FUNC15(&hints, 0, sizeof(struct addrinfo));
		hints.ai_family = family;
		hints.ai_socktype = uflag ? SOCK_DGRAM : SOCK_STREAM;
		hints.ai_protocol = uflag ? IPPROTO_UDP : IPPROTO_TCP;
		if (nflag)
			hints.ai_flags |= AI_NUMERICHOST;
	}

	if (xflag) {
		if (uflag)
			FUNC6(1, "no proxy support for UDP mode");

		if (lflag)
			FUNC6(1, "no proxy support for listen");

		if (family == AF_UNIX)
			FUNC6(1, "no proxy support for unix sockets");

		/* XXX IPv6 transport to proxy would probably work */
		if (family == AF_INET6)
			FUNC6(1, "no proxy support for IPv6");

		if (sflag)
			FUNC6(1, "no proxy support for local source address");

		proxyhost = FUNC29(&proxy, ":");
		proxyport = proxy;

		FUNC15(&proxyhints, 0, sizeof(struct addrinfo));
		proxyhints.ai_family = family;
		proxyhints.ai_socktype = SOCK_STREAM;
		proxyhints.ai_protocol = IPPROTO_TCP;
		if (nflag)
			proxyhints.ai_flags |= AI_NUMERICHOST;
	}

	if (lflag) {
		int connfd;
		ret = 0;

		if (family == AF_UNIX) {
			if (uflag)
				s = FUNC34(host);
			else
				s = FUNC36(host);
		}

		/* Allow only one connection at a time, but stay alive. */
		for (;;) {
			if (family != AF_UNIX)
				s = FUNC13(host, uport, hints);
			if (s < 0)
				FUNC5(1, NULL);
			/*
			 * For UDP and -k, don't connect the socket, let it
			 * receive datagrams from multiple socket pairs.
			 */
			if (uflag && kflag)
				FUNC18(s);
			/*
			 * For UDP and not -k, we will use recvfrom() initially
			 * to wait for a caller, then use the regular functions
			 * to talk to the caller.
			 */
			else if (uflag && !kflag) {
				int rv, plen;
				char buf[16384];
				struct sockaddr_storage z;

				len = sizeof(z);
				plen = 2048;
				rv = FUNC19(s, buf, plen, MSG_PEEK,
				    (struct sockaddr *)&z, &len);
				if (rv < 0)
					FUNC5(1, "recvfrom");

				rv = FUNC4(s, (struct sockaddr *)&z, len);
				if (rv < 0)
					FUNC5(1, "connect");

				if (vflag)
					FUNC21((struct sockaddr *)&z, len);

				FUNC18(s);
			} else {
				len = sizeof(cliaddr);
				connfd = FUNC0(s, (struct sockaddr *)&cliaddr,
				    &len);
				if (connfd == -1) {
					/* For now, all errnos are fatal */
					FUNC5(1, "accept");
				}
				if (vflag)
					FUNC21((struct sockaddr *)&cliaddr, len);

				FUNC18(connfd);
				FUNC3(connfd);
			}

			if (family != AF_UNIX)
				FUNC3(s);
			else if (uflag) {
				if (FUNC4(s, NULL, 0) < 0)
					FUNC5(1, "connect");
			}

			if (!kflag)
				break;
		}
	} else if (family == AF_UNIX) {
		ret = 0;

		if ((s = FUNC35(host)) > 0 && !zflag) {
			FUNC18(s);
			FUNC3(s);
		} else
			ret = 1;

		if (uflag)
			FUNC37(unix_dg_tmp_socket);
		FUNC7(ret);

	} else {
		int i = 0;

		/* Construct the portlist[] array. */
		FUNC2(uport);

		/* Cycle through portlist, connecting to each port. */
		for (i = 0; portlist[i] != NULL; i++) {
			if (s)
				FUNC3(s);

			if (xflag)
				s = FUNC23(host, portlist[i], hints,
				    proxyhost, proxyport, proxyhints, socksv,
				    Pflag);
			else
				s = FUNC20(host, portlist[i], hints);

			if (s < 0)
				continue;

			ret = 0;
			if (vflag || zflag) {
				/* For UDP, make sure we are connected. */
				if (uflag) {
					if (FUNC33(s) == -1) {
						ret = 1;
						continue;
					}
				}

				/* Don't look up port if -n. */
				if (nflag)
					sv = NULL;
				else {
					sv = FUNC11(
					    FUNC17(FUNC1(portlist[i])),
					    uflag ? "udp" : "tcp");
				}

				FUNC9(stderr,
				    "Connection to %s %s port [%s/%s] "
				    "succeeded!\n", host, portlist[i],
				    uflag ? "udp" : "tcp",
				    sv ? sv->s_name : "*");
			}
			if (Fflag)
				FUNC8(s);
			else if (!zflag)
				FUNC18(s);
		}
	}

	if (s)
		FUNC3(s);

	FUNC7(ret);
}