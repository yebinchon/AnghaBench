
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int16_t ;
struct smb_share_info_1 {char* shi1_netname; int shi1_remark; int shi1_type; } ;
struct TYPE_2__ {int ioc_srvname; } ;
struct smb_ctx {TYPE_1__ ct_ssn; } ;


 int EOF ;
 int EX_OSERR ;
 int SMBLK_CREATE ;
 int SMBL_SHARE ;
 int SMBL_VC ;
 int SMB_ERROR_MORE_DATA ;
 int SMB_RAP_ERROR ;
 int SMB_ST_ANY ;

 int STDPARAM_OPT ;
 int errx (int ,char*) ;
 int exit (int) ;
 int free (struct smb_share_info_1*) ;
 int getopt (int,char**,int ) ;
 int le16toh (int ) ;
 int le32toh (int ) ;
 scalar_t__ loadsmbvfs () ;
 struct smb_share_info_1* malloc (int) ;
 size_t min (int ,int) ;
 char* nls_str_toloc (char*,char*) ;
 int optarg ;
 int printf (char*,...) ;
 int rc_close (scalar_t__) ;
 char** shtype ;
 scalar_t__ smb_ctx_init (struct smb_ctx*,int,char**,int ,int ,int ) ;
 int smb_ctx_lookup (struct smb_ctx*,int ,int ) ;
 int smb_ctx_opt (struct smb_ctx*,int,int ) ;
 scalar_t__ smb_ctx_readrc (struct smb_ctx*) ;
 scalar_t__ smb_ctx_resolve (struct smb_ctx*) ;
 int smb_ctx_setshare (struct smb_ctx*,char*,int ) ;
 int smb_error (char*,int,...) ;
 int smb_rap_NetShareEnum (struct smb_ctx*,int,struct smb_share_info_1*,int,int*,int*) ;
 scalar_t__ smb_rc ;
 int view_usage () ;

int
cmd_view(int argc, char *argv[])
{
 struct smb_ctx sctx, *ctx = &sctx;
 struct smb_share_info_1 *rpbuf, *ep;
 char *cp;
 u_int32_t remark;
 u_int16_t type;
 int error, opt, bufsize, i, entries, total;


 if (argc < 2)
  view_usage();
 if (smb_ctx_init(ctx, argc, argv, SMBL_VC, SMBL_VC, SMB_ST_ANY) != 0)
  exit(1);
 if (smb_ctx_readrc(ctx) != 0)
  exit(1);
 if (smb_rc)
  rc_close(smb_rc);
 while ((opt = getopt(argc, argv, STDPARAM_OPT)) != EOF) {
  switch(opt){
      case 128:
   error = smb_ctx_opt(ctx, opt, optarg);
   if (error)
    exit(1);
   break;
      default:
   view_usage();

  }
 }




 smb_ctx_setshare(ctx, "IPC$", SMB_ST_ANY);
 if (smb_ctx_resolve(ctx) != 0)
  exit(1);
 error = smb_ctx_lookup(ctx, SMBL_SHARE, SMBLK_CREATE);
 if (error) {
  smb_error("could not login to server %s", error, ctx->ct_ssn.ioc_srvname);
  exit(1);
 }
 printf("Share        Type       Comment\n");
 printf("-------------------------------\n");
 bufsize = 0xffe0;
 rpbuf = malloc(bufsize);
 error = smb_rap_NetShareEnum(ctx, 1, rpbuf, bufsize, &entries, &total);
 if (error &&
     error != (SMB_ERROR_MORE_DATA | SMB_RAP_ERROR)) {
  smb_error("unable to list resources", error);
  exit(1);
 }
 for (ep = rpbuf, i = 0; i < entries; i++, ep++) {
  type = le16toh(ep->shi1_type);
  remark = le32toh(ep->shi1_remark);
  remark &= 0xFFFF;

  cp = (char*)rpbuf + remark;
  printf("%-12s %-10s %s\n", ep->shi1_netname,
      shtype[min(type, sizeof shtype / sizeof(char *) - 1)],
      remark ? nls_str_toloc(cp, cp) : "");
 }
 printf("\n%d shares listed from %d available\n", entries, total);
 free(rpbuf);
 return 0;
}
