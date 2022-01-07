
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hs20_osu_client {char* ca_fname; int http; void* result_file; void* ifname; void* summary_file; void* osu_ssid; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int S_IRWXU ;
 int check_workarounds (struct hs20_osu_client*) ;
 int cmd_dl_aaa_ca (struct hs20_osu_client*,char*,char*) ;
 int cmd_dl_osu_ca (struct hs20_osu_client*,char*,char*) ;
 int cmd_dl_polupd_ca (struct hs20_osu_client*,char*,char*) ;
 int cmd_from_tnds (struct hs20_osu_client*,char*,char*) ;
 int cmd_get_fqdn (struct hs20_osu_client*,char*) ;
 int cmd_oma_dm_add (struct hs20_osu_client*,char*,char*) ;
 int cmd_oma_dm_prov (struct hs20_osu_client*,char*) ;
 int cmd_oma_dm_replace (struct hs20_osu_client*,char*,char*) ;
 scalar_t__ cmd_oma_dm_sim_prov (struct hs20_osu_client*,char*) ;
 int cmd_osu_select (struct hs20_osu_client*,char*,int,int,int *) ;
 int cmd_pol_upd (struct hs20_osu_client*,char*,char*,char*) ;
 int cmd_prov (struct hs20_osu_client*,char*) ;
 int cmd_set_pps (struct hs20_osu_client*,char*) ;
 int cmd_signup (struct hs20_osu_client*,int,char const*) ;
 int cmd_sim_prov (struct hs20_osu_client*,char*) ;
 int cmd_sub_rem (struct hs20_osu_client*,char*,char*,char*) ;
 int cmd_to_tnds (struct hs20_osu_client*,char*,char*,char*,int) ;
 int deinit_ctx (struct hs20_osu_client*) ;
 int est_build_csr (struct hs20_osu_client*,char*) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int hs20_web_browser (char*) ;
 int http_parse_x509_certificate (int ,char*) ;
 scalar_t__ init_ctx (struct hs20_osu_client*) ;
 int mkdir (char*,int ) ;
 void* optarg ;
 int optind ;
 int setlinebuf (int ) ;
 void* spp_xsd_fname ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int unlink (void*) ;
 int usage () ;
 int wpa_debug_close_file () ;
 int wpa_debug_open_file (char const*) ;
 int wpa_printf (int,char*,...) ;
 int write_summary (struct hs20_osu_client*,char*) ;

int main(int argc, char *argv[])
{
 struct hs20_osu_client ctx;
 int c;
 int ret = 0;
 int no_prod_assoc = 0;
 const char *friendly_name = ((void*)0);
 const char *wpa_debug_file_path = ((void*)0);
 extern char *wpas_ctrl_path;
 extern int wpa_debug_level;
 extern int wpa_debug_show_keys;
 extern int wpa_debug_timestamp;

 if (init_ctx(&ctx) < 0)
  return -1;

 for (;;) {
  c = getopt(argc, argv, "df:hKNo:O:qr:s:S:tw:x:");
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
   usage();
   exit(0);
   break;
  }
 }

 if (argc - optind < 1) {
  usage();
  exit(0);
 }

 wpa_debug_open_file(wpa_debug_file_path);


 setlinebuf(stdout);


 if (ctx.result_file)
  unlink(ctx.result_file);
 wpa_printf(MSG_DEBUG, "===[hs20-osu-client START - command: %s ]======"
     "================", argv[optind]);
 check_workarounds(&ctx);

 if (strcmp(argv[optind], "to_tnds") == 0) {
  if (argc - optind < 2) {
   usage();
   exit(0);
  }
  cmd_to_tnds(&ctx, argv[optind + 1], argv[optind + 2],
       argc > optind + 3 ? argv[optind + 3] : ((void*)0),
       0);
 } else if (strcmp(argv[optind], "to_tnds2") == 0) {
  if (argc - optind < 2) {
   usage();
   exit(0);
  }
  cmd_to_tnds(&ctx, argv[optind + 1], argv[optind + 2],
       argc > optind + 3 ? argv[optind + 3] : ((void*)0),
       1);
 } else if (strcmp(argv[optind], "from_tnds") == 0) {
  if (argc - optind < 2) {
   usage();
   exit(0);
  }
  cmd_from_tnds(&ctx, argv[optind + 1], argv[optind + 2]);
 } else if (strcmp(argv[optind], "sub_rem") == 0) {
  if (argc - optind < 2) {
   usage();
   exit(0);
  }
  ret = cmd_sub_rem(&ctx, argv[optind + 1],
      argc > optind + 2 ? argv[optind + 2] : ((void*)0),
      argc > optind + 3 ? argv[optind + 3] : ((void*)0));
 } else if (strcmp(argv[optind], "pol_upd") == 0) {
  ret = cmd_pol_upd(&ctx,
      argc > optind + 1 ? argv[optind + 1] : ((void*)0),
      argc > optind + 2 ? argv[optind + 2] : ((void*)0),
      argc > optind + 3 ? argv[optind + 3] : ((void*)0));
 } else if (strcmp(argv[optind], "prov") == 0) {
  if (argc - optind < 2) {
   usage();
   exit(0);
  }
  ctx.ca_fname = argv[optind + 2];
  wpa_printf(MSG_DEBUG, "Calling cmd_prov from main");
  cmd_prov(&ctx, argv[optind + 1]);
 } else if (strcmp(argv[optind], "sim_prov") == 0) {
  if (argc - optind < 2) {
   usage();
   exit(0);
  }
  ctx.ca_fname = argv[optind + 2];
  cmd_sim_prov(&ctx, argv[optind + 1]);
 } else if (strcmp(argv[optind], "dl_osu_ca") == 0) {
  if (argc - optind < 2) {
   usage();
   exit(0);
  }
  cmd_dl_osu_ca(&ctx, argv[optind + 1], argv[optind + 2]);
 } else if (strcmp(argv[optind], "dl_polupd_ca") == 0) {
  if (argc - optind < 2) {
   usage();
   exit(0);
  }
  cmd_dl_polupd_ca(&ctx, argv[optind + 1], argv[optind + 2]);
 } else if (strcmp(argv[optind], "dl_aaa_ca") == 0) {
  if (argc - optind < 2) {
   usage();
   exit(0);
  }
  cmd_dl_aaa_ca(&ctx, argv[optind + 1], argv[optind + 2]);
 } else if (strcmp(argv[optind], "osu_select") == 0) {
  if (argc - optind < 2) {
   usage();
   exit(0);
  }
  ctx.ca_fname = argc > optind + 2 ? argv[optind + 2] : ((void*)0);
  cmd_osu_select(&ctx, argv[optind + 1], 2, 1, ((void*)0));
 } else if (strcmp(argv[optind], "signup") == 0) {
  ctx.ca_fname = argc > optind + 1 ? argv[optind + 1] : ((void*)0);
  ret = cmd_signup(&ctx, no_prod_assoc, friendly_name);
 } else if (strcmp(argv[optind], "set_pps") == 0) {
  if (argc - optind < 2) {
   usage();
   exit(0);
  }
  cmd_set_pps(&ctx, argv[optind + 1]);
 } else if (strcmp(argv[optind], "get_fqdn") == 0) {
  if (argc - optind < 1) {
   usage();
   exit(0);
  }
  ret = cmd_get_fqdn(&ctx, argv[optind + 1]);
 } else if (strcmp(argv[optind], "oma_dm_prov") == 0) {
  if (argc - optind < 2) {
   usage();
   exit(0);
  }
  ctx.ca_fname = argv[optind + 2];
  cmd_oma_dm_prov(&ctx, argv[optind + 1]);
 } else if (strcmp(argv[optind], "oma_dm_sim_prov") == 0) {
  if (argc - optind < 2) {
   usage();
   exit(0);
  }
  ctx.ca_fname = argv[optind + 2];
  if (cmd_oma_dm_sim_prov(&ctx, argv[optind + 1]) < 0) {
   write_summary(&ctx, "Failed to complete OMA DM SIM provisioning");
   return -1;
  }
 } else if (strcmp(argv[optind], "oma_dm_add") == 0) {
  if (argc - optind < 2) {
   usage();
   exit(0);
  }
  cmd_oma_dm_add(&ctx, argv[optind + 1], argv[optind + 2]);
 } else if (strcmp(argv[optind], "oma_dm_replace") == 0) {
  if (argc - optind < 2) {
   usage();
   exit(0);
  }
  cmd_oma_dm_replace(&ctx, argv[optind + 1], argv[optind + 2]);
 } else if (strcmp(argv[optind], "est_csr") == 0) {
  if (argc - optind < 2) {
   usage();
   exit(0);
  }
  mkdir("Cert", S_IRWXU);
  est_build_csr(&ctx, argv[optind + 1]);
 } else if (strcmp(argv[optind], "browser") == 0) {
  int ret;

  if (argc - optind < 2) {
   usage();
   exit(0);
  }

  wpa_printf(MSG_INFO, "Launch web browser to URL %s",
      argv[optind + 1]);
  ret = hs20_web_browser(argv[optind + 1]);
  wpa_printf(MSG_INFO, "Web browser result: %d", ret);
 } else if (strcmp(argv[optind], "parse_cert") == 0) {
  if (argc - optind < 2) {
   usage();
   exit(0);
  }

  wpa_debug_level = MSG_MSGDUMP;
  http_parse_x509_certificate(ctx.http, argv[optind + 1]);
  wpa_debug_level = MSG_INFO;
 } else {
  wpa_printf(MSG_INFO, "Unknown command '%s'", argv[optind]);
 }

 deinit_ctx(&ctx);
 wpa_printf(MSG_DEBUG,
     "===[hs20-osu-client END ]======================");

 wpa_debug_close_file();

 return ret;
}
