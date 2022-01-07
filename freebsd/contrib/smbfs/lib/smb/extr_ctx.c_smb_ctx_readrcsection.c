
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ioc_retrycount; int ioc_timeout; } ;
struct smb_ctx {TYPE_1__ ct_ssn; } ;


 int rc_getint (int ,char const*,char*,int *) ;
 int rc_getstringptr (int ,char const*,char*,char**) ;
 int smb_ctx_setcharset (struct smb_ctx*,char*) ;
 int smb_ctx_setpassword (struct smb_ctx*,char*) ;
 int smb_ctx_setsrvaddr (struct smb_ctx*,char*) ;
 int smb_ctx_setworkgroup (struct smb_ctx*,char*) ;
 int smb_error (char*,int,char const*) ;
 int smb_rc ;

__attribute__((used)) static int
smb_ctx_readrcsection(struct smb_ctx *ctx, const char *sname, int level)
{
 char *p;
 int error;

 if (level >= 0) {
  rc_getstringptr(smb_rc, sname, "charsets", &p);
  if (p) {
   error = smb_ctx_setcharset(ctx, p);
   if (error)
    smb_error("charset specification in the section '%s' ignored", error, sname);
  }
 }
 if (level <= 1) {
  rc_getint(smb_rc, sname, "timeout", &ctx->ct_ssn.ioc_timeout);
  rc_getint(smb_rc, sname, "retry_count", &ctx->ct_ssn.ioc_retrycount);
 }
 if (level == 1) {
  rc_getstringptr(smb_rc, sname, "addr", &p);
  if (p) {
   error = smb_ctx_setsrvaddr(ctx, p);
   if (error) {
    smb_error("invalid address specified in the section %s", 0, sname);
    return error;
   }
  }
 }
 if (level >= 2) {
  rc_getstringptr(smb_rc, sname, "password", &p);
  if (p)
   smb_ctx_setpassword(ctx, p);
 }
 rc_getstringptr(smb_rc, sname, "workgroup", &p);
 if (p)
  smb_ctx_setworkgroup(ctx, p);
 return 0;
}
