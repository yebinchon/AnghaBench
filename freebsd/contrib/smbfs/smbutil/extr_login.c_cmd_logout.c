
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ioc_srvname; int ioc_opt; } ;
struct TYPE_3__ {int ioc_opt; } ;
struct smb_ctx {int ct_parsedlevel; TYPE_2__ ct_ssn; TYPE_1__ ct_sh; } ;


 int EACCES ;
 int ENOENT ;
 int EOF ;
 int EX_OSERR ;


 int SMBSOPT_CREATE ;
 int SMBS_PERMANENT ;
 int SMBVOPT_CREATE ;
 int SMBV_PERMANENT ;
 int SMB_ST_ANY ;

 int STDPARAM_OPT ;
 int errx (int ,char*) ;
 int exit (int) ;
 int getopt (int,char**,int ) ;
 int loadsmbvfs () ;
 int logout_usage () ;
 int optarg ;
 int printf (char*) ;
 int rc_close (scalar_t__) ;
 scalar_t__ smb_ctx_init (struct smb_ctx*,int,char**,int,int,int ) ;
 int smb_ctx_lookup (struct smb_ctx*,int,int ) ;
 int smb_ctx_opt (struct smb_ctx*,int,int ) ;
 scalar_t__ smb_ctx_readrc (struct smb_ctx*) ;
 scalar_t__ smb_ctx_resolve (struct smb_ctx*) ;
 int smb_ctx_setflags (struct smb_ctx*,int,int,int ) ;
 int smb_error (char*,int,...) ;
 scalar_t__ smb_rc ;

int
cmd_logout(int argc, char *argv[])
{
 struct smb_ctx sctx, *ctx = &sctx;
 int error, opt, level;

 if (argc < 2)
  logout_usage();
 if (smb_ctx_init(ctx, argc, argv, 129, 130, SMB_ST_ANY) != 0)
  exit(1);
 if (smb_ctx_readrc(ctx) != 0)
  exit(1);
 if (smb_rc)
  rc_close(smb_rc);
 while ((opt = getopt(argc, argv, STDPARAM_OPT)) != EOF){
  switch (opt) {
      case 128:
   error = smb_ctx_opt(ctx, opt, optarg);
   if (error)
    exit(1);
   break;
      default:
   logout_usage();

  }
 }





 ctx->ct_ssn.ioc_opt &= ~SMBVOPT_CREATE;
 ctx->ct_sh.ioc_opt &= ~SMBSOPT_CREATE;
 if (smb_ctx_resolve(ctx) != 0)
  exit(1);
 level = ctx->ct_parsedlevel;
 error = smb_ctx_lookup(ctx, level, 0);
 if (error == ENOENT) {
  if (error) {
   smb_error("There is no connection to %s", error, ctx->ct_ssn.ioc_srvname);
   exit(1);
  }
 }
 if (error)
  exit(1);
 switch (level) {
     case 129:
  opt = SMBV_PERMANENT;
  break;
     case 130:
  opt = SMBS_PERMANENT;
  break;
     default:
  smb_error("unknown connection level %d", 0, level);
  exit(1);
 }
 error = smb_ctx_setflags(ctx, level, opt, 0);
 if (error && error != EACCES) {
  smb_error("Can't release connection", error);
  exit(1);
 }
 printf("Connection unmarked as permanent and will be closed when possible\n");
 exit(0);
}
