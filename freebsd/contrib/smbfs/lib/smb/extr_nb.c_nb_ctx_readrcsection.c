
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcfile {int dummy; } ;
struct nb_ctx {int nb_timo; } ;


 int EINVAL ;
 int nb_ctx_setns (struct nb_ctx*,char*) ;
 int nb_ctx_setscope (struct nb_ctx*,char*) ;
 int rc_getint (struct rcfile*,char const*,char*,int *) ;
 int rc_getstringptr (struct rcfile*,char const*,char*,char**) ;
 int smb_error (char*,int ,char const*) ;

int
nb_ctx_readrcsection(struct rcfile *rcfile, struct nb_ctx *ctx,
 const char *sname, int level)
{
 char *p;
 int error;

 if (level > 1)
  return EINVAL;
 rc_getint(rcfile, sname, "nbtimeout", &ctx->nb_timo);
 rc_getstringptr(rcfile, sname, "nbns", &p);
 if (p) {
  error = nb_ctx_setns(ctx, p);
  if (error) {
   smb_error("invalid address specified in the section %s", 0, sname);
   return error;
  }
 }
 rc_getstringptr(rcfile, sname, "nbscope", &p);
 if (p)
  nb_ctx_setscope(ctx, p);
 return 0;
}
