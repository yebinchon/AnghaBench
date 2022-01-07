
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req_arg {int name; } ;
struct gctl_req {unsigned int narg; struct gctl_req_arg* arg; int * error; } ;


 int EDOOFUS ;
 int ENOENT ;
 int free (int ) ;
 scalar_t__ strcmp (int ,char const*) ;

int
gctl_delete_param(struct gctl_req *req, const char *name)
{
 struct gctl_req_arg *ap;
 unsigned int i;

 if (req == ((void*)0) || req->error != ((void*)0))
  return (EDOOFUS);

 i = 0;
 while (i < req->narg) {
  ap = &req->arg[i];
  if (strcmp(ap->name, name) == 0)
   break;
  i++;
 }
 if (i == req->narg)
  return (ENOENT);

 free(ap->name);
 req->narg--;
 while (i < req->narg) {
  req->arg[i] = req->arg[i + 1];
  i++;
 }
 return (0);
}
