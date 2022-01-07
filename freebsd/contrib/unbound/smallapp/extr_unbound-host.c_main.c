
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_ctx {int dummy; } ;


 int ERR_load_SSL_strings () ;
 int ERR_load_crypto_strings () ;
 scalar_t__ NSS_NoDB_Init (char*) ;
 int OPENSSL_INIT_ADD_ALL_CIPHERS ;
 int OPENSSL_INIT_ADD_ALL_DIGESTS ;
 int OPENSSL_INIT_LOAD_CRYPTO_STRINGS ;
 int OPENSSL_INIT_LOAD_SSL_STRINGS ;
 int OPENSSL_init_crypto (int,int *) ;
 int OPENSSL_init_ssl (int ,int *) ;
 int OpenSSL_add_all_algorithms () ;
 char* ROOT_ANCHOR_FILE ;
 scalar_t__ SECSuccess ;
 int SSL_library_init () ;
 int check_ub_res (int ) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 int lookup (struct ub_ctx*,char*,char*,char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int ub_ctx_add_ta (struct ub_ctx*,char*) ;
 int ub_ctx_add_ta_file (struct ub_ctx*,char*) ;
 int ub_ctx_config (struct ub_ctx*,char*) ;
 struct ub_ctx* ub_ctx_create () ;
 int ub_ctx_debuglevel (struct ub_ctx*,int) ;
 scalar_t__ ub_ctx_get_option (struct ub_ctx*,char*,char**) ;
 int ub_ctx_resolvconf (struct ub_ctx*,char*) ;
 int ub_ctx_set_option (struct ub_ctx*,char*,char*) ;
 int ub_ctx_trustedkeys (struct ub_ctx*,char*) ;
 int usage () ;
 int verb ;

int main(int argc, char* argv[])
{
 int c;
 char* qclass = ((void*)0);
 char* qtype = ((void*)0);
 struct ub_ctx* ctx = ((void*)0);
 int debuglevel = 0;

 ctx = ub_ctx_create();
 if(!ctx) {
  fprintf(stderr, "error: out of memory\n");
  exit(1);
 }

 check_ub_res(ub_ctx_set_option(ctx, "target-fetch-policy:", "0 0 0 0 0"));


 while( (c=getopt(argc, argv, "46DF:c:df:hrt:vy:C:")) != -1) {
  switch(c) {
  case '4':
   check_ub_res(ub_ctx_set_option(ctx, "do-ip6:", "no"));
   break;
  case '6':
   check_ub_res(ub_ctx_set_option(ctx, "do-ip4:", "no"));
   break;
  case 'c':
   qclass = optarg;
   break;
  case 'C':
   check_ub_res(ub_ctx_config(ctx, optarg));
   break;
  case 'D':
   check_ub_res(ub_ctx_add_ta_file(ctx, ROOT_ANCHOR_FILE));
   break;
  case 'd':
   debuglevel++;
   if(debuglevel < 2)
    debuglevel = 2;
   break;
  case 'r':
   check_ub_res(ub_ctx_resolvconf(ctx, "/etc/resolv.conf"));
   break;
  case 't':
   qtype = optarg;
   break;
  case 'v':
   verb++;
   break;
  case 'y':
   check_ub_res(ub_ctx_add_ta(ctx, optarg));
   break;
  case 'f':
   check_ub_res(ub_ctx_add_ta_file(ctx, optarg));
   break;
  case 'F':
   check_ub_res(ub_ctx_trustedkeys(ctx, optarg));
   break;
  case '?':
  case 'h':
  default:
   usage();
  }
 }
 if(debuglevel != 0)
  check_ub_res(ub_ctx_debuglevel(ctx, debuglevel));
 if(ub_ctx_get_option(ctx, "use-syslog", &optarg) == 0) {
  if(strcmp(optarg, "yes") == 0)
   check_ub_res(ub_ctx_set_option(ctx,
    "use-syslog:", "no"));
  free(optarg);
 }
 argc -= optind;
 argv += optind;
 if(argc != 1)
  usage();
 lookup(ctx, argv[0], qtype, qclass);
 return 0;
}
