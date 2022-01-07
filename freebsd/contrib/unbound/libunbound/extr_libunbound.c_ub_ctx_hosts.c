
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ub_ctx {int cfglock; TYPE_2__* env; scalar_t__ finalized; } ;
typedef int ldata ;
typedef int buf ;
struct TYPE_4__ {TYPE_1__* cfg; } ;
struct TYPE_3__ {int local_data; } ;
typedef int FILE ;


 int EINVAL ;
 int ENOMEM ;
 int UB_AFTERFINAL ;
 int UB_NOERROR ;
 int UB_NOMEM ;
 int UB_READFILE ;
 int UB_SYNTAX ;
 int cfg_strlist_insert (int *,char*) ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 char* getenv (char*) ;
 scalar_t__ isxdigit (unsigned char) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int snprintf (char*,int,char*,char*,char*,...) ;
 scalar_t__ str_is_ip6 (char*) ;
 char* strdup (char*) ;

int
ub_ctx_hosts(struct ub_ctx* ctx, const char* fname)
{
 FILE* in;
 char buf[1024], ldata[1024];
 char* parse, *addr, *name, *ins;
 lock_basic_lock(&ctx->cfglock);
 if(ctx->finalized) {
  lock_basic_unlock(&ctx->cfglock);
  errno=EINVAL;
  return UB_AFTERFINAL;
 }
 lock_basic_unlock(&ctx->cfglock);
 if(fname == ((void*)0)) {
  fname = "/etc/hosts";

 }
 in = fopen(fname, "r");
 if(!in) {

  return UB_READFILE;
 }
 while(fgets(buf, (int)sizeof(buf), in)) {
  buf[sizeof(buf)-1] = 0;
  parse=buf;
  while(*parse == ' ' || *parse == '\t')
   parse++;
  if(*parse == '#')
   continue;

  addr = parse;

  while(isxdigit((unsigned char)*parse) || *parse == '.' || *parse == ':')
   parse++;
  if(*parse == '\r')
   parse++;
  if(*parse == '\n' || *parse == 0)
   continue;
  if(*parse == '%')
   continue;
  if(*parse != ' ' && *parse != '\t') {

   fclose(in);
   errno=EINVAL;
   return UB_SYNTAX;
  }
  *parse++ = 0;

  while(*parse) {
   while(*parse == ' ' || *parse == '\t' || *parse=='\n'
    || *parse=='\r')
    parse++;
   if(*parse == 0 || *parse == '#')
    break;

   name = parse;
   while('!' <= *parse && *parse <= '~')
    parse++;
   if(*parse)
    *parse++ = 0;
   snprintf(ldata, sizeof(ldata), "%s %s %s",
    name, str_is_ip6(addr)?"AAAA":"A", addr);
   ins = strdup(ldata);
   if(!ins) {

    fclose(in);
    errno=ENOMEM;
    return UB_NOMEM;
   }
   lock_basic_lock(&ctx->cfglock);
   if(!cfg_strlist_insert(&ctx->env->cfg->local_data,
    ins)) {
    lock_basic_unlock(&ctx->cfglock);
    fclose(in);
    errno=ENOMEM;
    return UB_NOMEM;
   }
   lock_basic_unlock(&ctx->cfglock);
  }
 }
 fclose(in);
 return UB_NOERROR;
}
