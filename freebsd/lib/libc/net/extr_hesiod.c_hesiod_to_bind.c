
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hesiod_p {char* rhs; char const* lhs; } ;
typedef int bindname ;


 int EMSGSIZE ;
 int ENOENT ;
 int ENOMEM ;
 int MAXDNAME ;
 int errno ;
 int hesiod_free_list (void*,char**) ;
 char** hesiod_resolve (void*,char*,char*) ;
 int strcat (char*,char const*) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char const*) ;

char *
hesiod_to_bind(void *context, const char *name, const char *type)
{
 struct hesiod_p *ctx = (struct hesiod_p *) context;
 char bindname[MAXDNAME], *p, *ret, **rhs_list = ((void*)0);
 const char *rhs;
 int len;

 if (strlcpy(bindname, name, sizeof(bindname)) >= sizeof(bindname)) {
  errno = EMSGSIZE;
  return ((void*)0);
 }





 p = strchr(bindname, '@');
 if (p) {
  *p++ = 0;
  if (strchr(p, '.'))
   rhs = name + (p - bindname);
  else {
   rhs_list = hesiod_resolve(context, p, "rhs-extension");
   if (rhs_list)
    rhs = *rhs_list;
   else {
    errno = ENOENT;
    return ((void*)0);
   }
  }
 } else
  rhs = ctx->rhs;


 len = strlen(bindname) + 1 + strlen(type);
 if (ctx->lhs)
  len += strlen(ctx->lhs) + ((ctx->lhs[0] != '.') ? 1 : 0);
 len += strlen(rhs) + ((rhs[0] != '.') ? 1 : 0);
 if (len > sizeof(bindname) - 1) {
  if (rhs_list)
   hesiod_free_list(context, rhs_list);
  errno = EMSGSIZE;
  return ((void*)0);
 }

 strcat(bindname, ".");
 strcat(bindname, type);

 if (ctx->lhs && ctx->lhs[0] != '\0' ) {
  if (ctx->lhs[0] != '.')
   strcat(bindname, ".");
  strcat(bindname, ctx->lhs);
 }
 if (rhs[0] != '.')
  strcat(bindname, ".");
 strcat(bindname, rhs);


 if (rhs_list)
  hesiod_free_list(context, rhs_list);


 ret = strdup(bindname);
 if (!ret)
  errno = ENOMEM;
 return ret;
}
