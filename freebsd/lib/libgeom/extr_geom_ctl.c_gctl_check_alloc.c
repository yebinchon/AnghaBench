
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int * error; } ;


 int gctl_set_error (struct gctl_req*,int *) ;
 int * nomemmsg ;

__attribute__((used)) static void
gctl_check_alloc(struct gctl_req *req, void *ptr)
{

 if (ptr != ((void*)0))
  return;
 gctl_set_error(req, nomemmsg);
 if (req->error == ((void*)0))
  req->error = nomemmsg;
}
