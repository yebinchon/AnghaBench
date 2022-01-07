
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ioc_servercs; int ioc_localcs; } ;
struct smb_ctx {TYPE_1__ ct_ssn; } ;


 int EINVAL ;
 char* memcpy (int ,char const*,int) ;
 int nls_setrecode (char*,char*) ;
 int smb_error (char*,int,char const*,...) ;
 char* strchr (char const*,char) ;
 char* strcpy (int ,char*) ;
 scalar_t__ strlen (char*) ;

int
smb_ctx_setcharset(struct smb_ctx *ctx, const char *arg)
{
 char *cp, *servercs, *localcs;
 int cslen = sizeof(ctx->ct_ssn.ioc_localcs);
 int scslen, lcslen, error;

 cp = strchr(arg, ':');
 lcslen = cp ? (cp - arg) : 0;
 if (lcslen == 0 || lcslen >= cslen) {
  smb_error("invalid local charset specification (%s)", 0, arg);
  return EINVAL;
 }
 scslen = (size_t)strlen(++cp);
 if (scslen == 0 || scslen >= cslen) {
  smb_error("invalid server charset specification (%s)", 0, arg);
  return EINVAL;
 }
 localcs = memcpy(ctx->ct_ssn.ioc_localcs, arg, lcslen);
 localcs[lcslen] = 0;
 servercs = strcpy(ctx->ct_ssn.ioc_servercs, cp);
 error = nls_setrecode(localcs, servercs);
 if (error == 0)
  return 0;
 smb_error("can't initialize iconv support (%s:%s)",
     error, localcs, servercs);
 localcs[0] = 0;
 servercs[0] = 0;
 return error;
}
