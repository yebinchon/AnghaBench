
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ioc_srvname; } ;
struct smb_ctx {TYPE_1__ ct_ssn; } ;


 int ENAMETOOLONG ;
 scalar_t__ SMB_MAXSRVNAMELEN ;
 int nls_str_upper (int ,char const*) ;
 int smb_error (char*,int ,char const*) ;
 scalar_t__ strlen (char const*) ;

int
smb_ctx_setserver(struct smb_ctx *ctx, const char *name)
{
 if (strlen(name) > SMB_MAXSRVNAMELEN) {
  smb_error("server name '%s' too long", 0, name);
  return ENAMETOOLONG;
 }
 nls_str_upper(ctx->ct_ssn.ioc_srvname, name);
 return 0;
}
