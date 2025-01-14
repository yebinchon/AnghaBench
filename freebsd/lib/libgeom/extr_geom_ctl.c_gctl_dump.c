
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct gctl_req_arg {char* name; int nlen; int flag; int len; scalar_t__ value; } ;
struct gctl_req {char* error; unsigned int narg; struct gctl_req_arg* arg; } ;
typedef int FILE ;


 int GCTL_PARAM_ASCII ;
 int GCTL_PARAM_RD ;
 int GCTL_PARAM_WR ;
 int fflush (int *) ;
 int fprintf (int *,char*,...) ;

void
gctl_dump(struct gctl_req *req, FILE *f)
{
 unsigned int i;
 int j;
 struct gctl_req_arg *ap;

 if (req == ((void*)0)) {
  fprintf(f, "Dump of gctl request at NULL\n");
  return;
 }
 fprintf(f, "Dump of gctl request at %p:\n", req);
 if (req->error != ((void*)0))
  fprintf(f, "  error:\t\"%s\"\n", req->error);
 else
  fprintf(f, "  error:\tNULL\n");
 for (i = 0; i < req->narg; i++) {
  ap = &req->arg[i];
  fprintf(f, "  param:\t\"%s\" (%d)", ap->name, ap->nlen);
  fprintf(f, " [%s%s",
      ap->flag & GCTL_PARAM_RD ? "R" : "",
      ap->flag & GCTL_PARAM_WR ? "W" : "");
  fflush(f);
  if (ap->flag & GCTL_PARAM_ASCII)
   fprintf(f, "%d] = \"%s\"", ap->len, (char *)ap->value);
  else if (ap->len > 0) {
   fprintf(f, "%d] = ", ap->len);
   fflush(f);
   for (j = 0; j < ap->len; j++) {
    fprintf(f, " %02x", ((u_char *)ap->value)[j]);
   }
  } else {
   fprintf(f, "0] = %p", ap->value);
  }
  fprintf(f, "\n");
 }
}
