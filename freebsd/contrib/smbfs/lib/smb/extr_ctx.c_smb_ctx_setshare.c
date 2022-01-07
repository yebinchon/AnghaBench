
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ioc_stype; int ioc_share; } ;
struct smb_ctx {TYPE_1__ ct_sh; int ct_parsedlevel; } ;


 int ENAMETOOLONG ;
 int SMBL_SHARE ;
 scalar_t__ SMB_MAXSHARENAMELEN ;
 int nls_str_upper (int ,char const*) ;
 int smb_error (char*,int ,char const*) ;
 scalar_t__ strlen (char const*) ;

int
smb_ctx_setshare(struct smb_ctx *ctx, const char *share, int stype)
{
 if (strlen(share) > SMB_MAXSHARENAMELEN) {
  smb_error("share name '%s' too long", 0, share);
  return ENAMETOOLONG;
 }
 nls_str_upper(ctx->ct_sh.ioc_share, share);
 if (share[0] != 0)
  ctx->ct_parsedlevel = SMBL_SHARE;
 ctx->ct_sh.ioc_stype = stype;
 return 0;
}
