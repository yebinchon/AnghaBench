
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {unsigned int narg; struct gctl_req* error; struct gctl_req* arg; struct gctl_req* name; } ;


 int free (struct gctl_req*) ;
 struct gctl_req* nomemmsg ;

void
gctl_free(struct gctl_req *req)
{
 unsigned int i;

 if (req == ((void*)0))
  return;
 for (i = 0; i < req->narg; i++) {
  if (req->arg[i].name != ((void*)0))
   free(req->arg[i].name);
 }
 free(req->arg);
 if (req->error != ((void*)0) && req->error != nomemmsg)
  free(req->error);
 free(req);
}
