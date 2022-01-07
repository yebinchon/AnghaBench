
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct gctl_req_arg {int flag; int len; void* value; int name; } ;
struct gctl_req {unsigned int narg; struct gctl_req_arg* arg; } ;
typedef int param ;


 int GCTL_PARAM_RD ;
 int abort () ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,int ) ;
 int vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static void *
gctl_get_param(struct gctl_req *req, size_t len, const char *pfmt, va_list ap)
{
 struct gctl_req_arg *argp;
 char param[256];
 unsigned int i;
 void *p;

 vsnprintf(param, sizeof(param), pfmt, ap);
 for (i = 0; i < req->narg; i++) {
  argp = &req->arg[i];
  if (strcmp(param, argp->name))
   continue;
  if (!(argp->flag & GCTL_PARAM_RD))
   continue;
  p = argp->value;
  if (len == 0) {

   if (argp->len < 1) {
    fprintf(stderr, "No length argument (%s).\n",
        param);
    abort();
   }
   if (((char *)p)[argp->len - 1] != '\0') {
    fprintf(stderr, "Unterminated argument (%s).\n",
        param);
    abort();
   }
  } else if ((int)len != argp->len) {
   fprintf(stderr, "Wrong length %s argument.\n", param);
   abort();
  }
  return (p);
 }
 fprintf(stderr, "No such argument (%s).\n", param);
 abort();
}
