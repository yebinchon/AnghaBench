
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* ioc_timeout; void* ioc_retrycount; int ioc_group; int ioc_owner; void* ioc_rights; } ;
struct TYPE_3__ {int ioc_group; int ioc_owner; void* ioc_rights; } ;
struct smb_ctx {TYPE_2__ ct_ssn; TYPE_1__ ct_sh; int ct_flags; } ;


 int SMBCF_NOPWD ;
 int SMBCF_SRIGHTS ;
 void* atoi (char const*) ;
 int free (char*) ;
 int smb_ctx_setsrvaddr (struct smb_ctx*,char const*) ;
 int smb_ctx_setworkgroup (struct smb_ctx*,char const*) ;
 int smb_parse_owner (char*,int *,int *) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 void* strtol (char const*,char**,int) ;

int
smb_ctx_opt(struct smb_ctx *ctx, int opt, const char *arg)
{
 int error = 0;
 char *p, *cp;

 switch(opt) {
     case 'U':
  break;
     case 'I':
  error = smb_ctx_setsrvaddr(ctx, arg);
  break;
     case 'M':
  ctx->ct_ssn.ioc_rights = strtol(arg, &cp, 8);
  if (*cp == '/') {
   ctx->ct_sh.ioc_rights = strtol(cp + 1, &cp, 8);
   ctx->ct_flags |= SMBCF_SRIGHTS;
  }
  break;
     case 'N':
  ctx->ct_flags |= SMBCF_NOPWD;
  break;
     case 'O':
  p = strdup(arg);
  cp = strchr(p, '/');
  if (cp) {
   *cp++ = '\0';
   error = smb_parse_owner(cp, &ctx->ct_sh.ioc_owner,
       &ctx->ct_sh.ioc_group);
  }
  if (*p && error == 0) {
   error = smb_parse_owner(p, &ctx->ct_ssn.ioc_owner,
       &ctx->ct_ssn.ioc_group);
  }
  free(p);
  break;
     case 'P':

  break;
     case 'R':
  ctx->ct_ssn.ioc_retrycount = atoi(arg);
  break;
     case 'T':
  ctx->ct_ssn.ioc_timeout = atoi(arg);
  break;
     case 'W':
  error = smb_ctx_setworkgroup(ctx, arg);
  break;
 }
 return error;
}
