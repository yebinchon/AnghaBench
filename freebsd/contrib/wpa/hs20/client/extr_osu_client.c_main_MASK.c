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
struct hs20_osu_client {char* ca_fname; int /*<<< orphan*/  http; void* result_file; void* ifname; void* summary_file; void* osu_ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int MSG_INFO ; 
 int MSG_MSGDUMP ; 
 int /*<<< orphan*/  S_IRWXU ; 
 int /*<<< orphan*/  FUNC0 (struct hs20_osu_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct hs20_osu_client*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hs20_osu_client*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hs20_osu_client*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct hs20_osu_client*,char*,char*) ; 
 int FUNC5 (struct hs20_osu_client*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct hs20_osu_client*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct hs20_osu_client*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct hs20_osu_client*,char*,char*) ; 
 scalar_t__ FUNC9 (struct hs20_osu_client*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct hs20_osu_client*,char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct hs20_osu_client*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct hs20_osu_client*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct hs20_osu_client*,char*) ; 
 int FUNC14 (struct hs20_osu_client*,int,char const*) ; 
 int /*<<< orphan*/  FUNC15 (struct hs20_osu_client*,char*) ; 
 int FUNC16 (struct hs20_osu_client*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct hs20_osu_client*,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct hs20_osu_client*) ; 
 int /*<<< orphan*/  FUNC19 (struct hs20_osu_client*,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int,char**,char*) ; 
 int FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC24 (struct hs20_osu_client*) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ) ; 
 void* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 void* spp_xsd_fname ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC27 (char*,char*) ; 
 int /*<<< orphan*/  FUNC28 (void*) ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (char const*) ; 
 int /*<<< orphan*/  FUNC32 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC33 (struct hs20_osu_client*,char*) ; 

int FUNC34(int argc, char *argv[])
{
	struct hs20_osu_client ctx;
	int c;
	int ret = 0;
	int no_prod_assoc = 0;
	const char *friendly_name = NULL;
	const char *wpa_debug_file_path = NULL;
	extern char *wpas_ctrl_path;
	extern int wpa_debug_level;
	extern int wpa_debug_show_keys;
	extern int wpa_debug_timestamp;

	if (FUNC24(&ctx) < 0)
		return -1;

	for (;;) {
		c = FUNC21(argc, argv, "df:hKNo:O:qr:s:S:tw:x:");
		if (c < 0)
			break;
		switch (c) {
		case 'd':
			if (wpa_debug_level > 0)
				wpa_debug_level--;
			break;
		case 'f':
			wpa_debug_file_path = optarg;
			break;
		case 'K':
			wpa_debug_show_keys++;
			break;
		case 'N':
			no_prod_assoc = 1;
			break;
		case 'o':
			ctx.osu_ssid = optarg;
			break;
		case 'O':
			friendly_name = optarg;
			break;
		case 'q':
			wpa_debug_level++;
			break;
		case 'r':
			ctx.result_file = optarg;
			break;
		case 's':
			ctx.summary_file = optarg;
			break;
		case 'S':
			ctx.ifname = optarg;
			break;
		case 't':
			wpa_debug_timestamp++;
			break;
		case 'w':
			wpas_ctrl_path = optarg;
			break;
		case 'x':
			spp_xsd_fname = optarg;
			break;
		case 'h':
		default:
			FUNC29();
			FUNC20(0);
			break;
		}
	}

	if (argc - optind < 1) {
		FUNC29();
		FUNC20(0);
	}

	FUNC31(wpa_debug_file_path);

#ifdef __linux__
	FUNC26(stdout);
#endif /* __linux__ */

	if (ctx.result_file)
		FUNC28(ctx.result_file);
	FUNC32(MSG_DEBUG, "===[hs20-osu-client START - command: %s ]======"
		   "================", argv[optind]);
	FUNC0(&ctx);

	if (FUNC27(argv[optind], "to_tnds") == 0) {
		if (argc - optind < 2) {
			FUNC29();
			FUNC20(0);
		}
		FUNC17(&ctx, argv[optind + 1], argv[optind + 2],
			    argc > optind + 3 ? argv[optind + 3] : NULL,
			    0);
	} else if (FUNC27(argv[optind], "to_tnds2") == 0) {
		if (argc - optind < 2) {
			FUNC29();
			FUNC20(0);
		}
		FUNC17(&ctx, argv[optind + 1], argv[optind + 2],
			    argc > optind + 3 ? argv[optind + 3] : NULL,
			    1);
	} else if (FUNC27(argv[optind], "from_tnds") == 0) {
		if (argc - optind < 2) {
			FUNC29();
			FUNC20(0);
		}
		FUNC4(&ctx, argv[optind + 1], argv[optind + 2]);
	} else if (FUNC27(argv[optind], "sub_rem") == 0) {
		if (argc - optind < 2) {
			FUNC29();
			FUNC20(0);
		}
		ret = FUNC16(&ctx, argv[optind + 1],
				  argc > optind + 2 ? argv[optind + 2] : NULL,
				  argc > optind + 3 ? argv[optind + 3] : NULL);
	} else if (FUNC27(argv[optind], "pol_upd") == 0) {
		ret = FUNC11(&ctx,
				  argc > optind + 1 ? argv[optind + 1] : NULL,
				  argc > optind + 2 ? argv[optind + 2] : NULL,
				  argc > optind + 3 ? argv[optind + 3] : NULL);
	} else if (FUNC27(argv[optind], "prov") == 0) {
		if (argc - optind < 2) {
			FUNC29();
			FUNC20(0);
		}
		ctx.ca_fname = argv[optind + 2];
		FUNC32(MSG_DEBUG, "Calling cmd_prov from main");
		FUNC12(&ctx, argv[optind + 1]);
	} else if (FUNC27(argv[optind], "sim_prov") == 0) {
		if (argc - optind < 2) {
			FUNC29();
			FUNC20(0);
		}
		ctx.ca_fname = argv[optind + 2];
		FUNC15(&ctx, argv[optind + 1]);
	} else if (FUNC27(argv[optind], "dl_osu_ca") == 0) {
		if (argc - optind < 2) {
			FUNC29();
			FUNC20(0);
		}
		FUNC2(&ctx, argv[optind + 1], argv[optind + 2]);
	} else if (FUNC27(argv[optind], "dl_polupd_ca") == 0) {
		if (argc - optind < 2) {
			FUNC29();
			FUNC20(0);
		}
		FUNC3(&ctx, argv[optind + 1], argv[optind + 2]);
	} else if (FUNC27(argv[optind], "dl_aaa_ca") == 0) {
		if (argc - optind < 2) {
			FUNC29();
			FUNC20(0);
		}
		FUNC1(&ctx, argv[optind + 1], argv[optind + 2]);
	} else if (FUNC27(argv[optind], "osu_select") == 0) {
		if (argc - optind < 2) {
			FUNC29();
			FUNC20(0);
		}
		ctx.ca_fname = argc > optind + 2 ? argv[optind + 2] : NULL;
		FUNC10(&ctx, argv[optind + 1], 2, 1, NULL);
	} else if (FUNC27(argv[optind], "signup") == 0) {
		ctx.ca_fname = argc > optind + 1 ? argv[optind + 1] : NULL;
		ret = FUNC14(&ctx, no_prod_assoc, friendly_name);
	} else if (FUNC27(argv[optind], "set_pps") == 0) {
		if (argc - optind < 2) {
			FUNC29();
			FUNC20(0);
		}
		FUNC13(&ctx, argv[optind + 1]);
	} else if (FUNC27(argv[optind], "get_fqdn") == 0) {
		if (argc - optind < 1) {
			FUNC29();
			FUNC20(0);
		}
		ret = FUNC5(&ctx, argv[optind + 1]);
	} else if (FUNC27(argv[optind], "oma_dm_prov") == 0) {
		if (argc - optind < 2) {
			FUNC29();
			FUNC20(0);
		}
		ctx.ca_fname = argv[optind + 2];
		FUNC7(&ctx, argv[optind + 1]);
	} else if (FUNC27(argv[optind], "oma_dm_sim_prov") == 0) {
		if (argc - optind < 2) {
			FUNC29();
			FUNC20(0);
		}
		ctx.ca_fname = argv[optind + 2];
		if (FUNC9(&ctx, argv[optind + 1]) < 0) {
			FUNC33(&ctx, "Failed to complete OMA DM SIM provisioning");
			return -1;
		}
	} else if (FUNC27(argv[optind], "oma_dm_add") == 0) {
		if (argc - optind < 2) {
			FUNC29();
			FUNC20(0);
		}
		FUNC6(&ctx, argv[optind + 1], argv[optind + 2]);
	} else if (FUNC27(argv[optind], "oma_dm_replace") == 0) {
		if (argc - optind < 2) {
			FUNC29();
			FUNC20(0);
		}
		FUNC8(&ctx, argv[optind + 1], argv[optind + 2]);
	} else if (FUNC27(argv[optind], "est_csr") == 0) {
		if (argc - optind < 2) {
			FUNC29();
			FUNC20(0);
		}
		FUNC25("Cert", S_IRWXU);
		FUNC19(&ctx, argv[optind + 1]);
	} else if (FUNC27(argv[optind], "browser") == 0) {
		int ret;

		if (argc - optind < 2) {
			FUNC29();
			FUNC20(0);
		}

		FUNC32(MSG_INFO, "Launch web browser to URL %s",
			   argv[optind + 1]);
		ret = FUNC22(argv[optind + 1]);
		FUNC32(MSG_INFO, "Web browser result: %d", ret);
	} else if (FUNC27(argv[optind], "parse_cert") == 0) {
		if (argc - optind < 2) {
			FUNC29();
			FUNC20(0);
		}

		wpa_debug_level = MSG_MSGDUMP;
		FUNC23(ctx.http, argv[optind + 1]);
		wpa_debug_level = MSG_INFO;
	} else {
		FUNC32(MSG_INFO, "Unknown command '%s'", argv[optind]);
	}

	FUNC18(&ctx);
	FUNC32(MSG_DEBUG,
		   "===[hs20-osu-client END ]======================");

	FUNC30();

	return ret;
}