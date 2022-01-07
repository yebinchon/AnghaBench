
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req_arg {int name; } ;
struct gctl_req {unsigned int narg; struct gctl_req_arg* arg; int * error; } ;


 scalar_t__ strcmp (int ,char const*) ;

int
gctl_has_param(struct gctl_req *req, const char *name)
{
 struct gctl_req_arg *ap;
 unsigned int i;

 if (req == ((void*)0) || req->error != ((void*)0))
  return (0);

 for (i = 0; i < req->narg; i++) {
  ap = &req->arg[i];
  if (strcmp(ap->name, name) == 0)
   return (1);
 }
 return (0);
}
