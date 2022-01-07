
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct TYPE_4__ {void* ioc_group; void* ioc_owner; void* ioc_rights; void* ioc_mode; void* ioc_opt; } ;
struct TYPE_3__ {int ioc_timeout; int ioc_retrycount; void* ioc_rights; void* ioc_mode; void* ioc_group; void* ioc_owner; void* ioc_opt; } ;
struct smb_ctx {int ct_fd; int ct_minlevel; int ct_maxlevel; char const* ct_uncnext; int ct_nb; TYPE_2__ ct_sh; TYPE_1__ ct_ssn; int ct_smbtcpport; int ct_parsedlevel; } ;
struct passwd {char const* pw_name; } ;


 int SMBL_NONE ;
 void* SMBM_ANY_GROUP ;
 void* SMBM_ANY_OWNER ;
 void* SMBM_DEFAULT ;
 void* SMBM_EXEC ;
 void* SMBVOPT_CREATE ;
 int SMB_TCP_PORT ;
 int bzero (struct smb_ctx*,int) ;
 int cf_getopt (int,char**,char*) ;
 char* cf_optarg ;
 int cf_optind ;
 int cf_optreset ;
 int endpwent () ;
 scalar_t__ geteuid () ;
 struct passwd* getpwuid (scalar_t__) ;
 int nb_ctx_create (int *) ;
 int nb_ctx_setscope (int ,char*) ;
 int nls_setlocale (char const*) ;
 int smb_ctx_parseunc (struct smb_ctx*,char const*,int,char const**) ;
 int smb_ctx_setcharset (struct smb_ctx*,char const*) ;
 int smb_ctx_setuser (struct smb_ctx*,char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

int
smb_ctx_init(struct smb_ctx *ctx, int argc, char *argv[],
 int minlevel, int maxlevel, int sharetype)
{
 int opt, error = 0;
 uid_t euid;
 const char *arg, *cp;
 struct passwd *pwd;

 bzero(ctx,sizeof(*ctx));
 error = nb_ctx_create(&ctx->ct_nb);
 if (error)
  return error;
 ctx->ct_fd = -1;
 ctx->ct_parsedlevel = SMBL_NONE;
 ctx->ct_minlevel = minlevel;
 ctx->ct_maxlevel = maxlevel;
 ctx->ct_smbtcpport = SMB_TCP_PORT;

 ctx->ct_ssn.ioc_opt = SMBVOPT_CREATE;
 ctx->ct_ssn.ioc_timeout = 15;
 ctx->ct_ssn.ioc_retrycount = 4;
 ctx->ct_ssn.ioc_owner = SMBM_ANY_OWNER;
 ctx->ct_ssn.ioc_group = SMBM_ANY_GROUP;
 ctx->ct_ssn.ioc_mode = SMBM_EXEC;
 ctx->ct_ssn.ioc_rights = SMBM_DEFAULT;

 ctx->ct_sh.ioc_opt = SMBVOPT_CREATE;
 ctx->ct_sh.ioc_owner = SMBM_ANY_OWNER;
 ctx->ct_sh.ioc_group = SMBM_ANY_GROUP;
 ctx->ct_sh.ioc_mode = SMBM_EXEC;
 ctx->ct_sh.ioc_rights = SMBM_DEFAULT;
 ctx->ct_sh.ioc_owner = SMBM_ANY_OWNER;
 ctx->ct_sh.ioc_group = SMBM_ANY_GROUP;

 nb_ctx_setscope(ctx->ct_nb, "");
 euid = geteuid();
 if ((pwd = getpwuid(euid)) != ((void*)0)) {
  smb_ctx_setuser(ctx, pwd->pw_name);
  endpwent();
 } else if (euid == 0)
  smb_ctx_setuser(ctx, "root");
 else
  return 0;
 if (argv == ((void*)0))
  return 0;
 for (opt = 1; opt < argc; opt++) {
  cp = argv[opt];
  if (strncmp(cp, "//", 2) != 0)
   continue;
  error = smb_ctx_parseunc(ctx, cp, sharetype, (const char**)&cp);
  if (error)
   return error;
  ctx->ct_uncnext = cp;
  break;
 }
 while (error == 0 && (opt = cf_getopt(argc, argv, ":E:L:U:")) != -1) {
  arg = cf_optarg;
  switch (opt) {
      case 'E':
   error = smb_ctx_setcharset(ctx, arg);
   if (error)
    return error;
   break;
      case 'L':
   error = nls_setlocale(arg);
   if (error)
    break;
   break;
      case 'U':
   error = smb_ctx_setuser(ctx, arg);
   break;
  }
 }
 cf_optind = cf_optreset = 1;
 return error;
}
