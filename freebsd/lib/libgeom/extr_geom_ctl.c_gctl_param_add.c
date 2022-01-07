
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req_arg {void* name; int flag; int len; void* value; void* nlen; } ;
struct gctl_req {int * error; } ;


 int GCTL_PARAM_ASCII ;
 int gctl_check_alloc (struct gctl_req*,void*) ;
 struct gctl_req_arg* gctl_new_arg (struct gctl_req*) ;
 void* strdup (char const*) ;
 void* strlen (void*) ;

__attribute__((used)) static void
gctl_param_add(struct gctl_req *req, const char *name, int len, void *value,
    int flag)
{
 struct gctl_req_arg *ap;

 if (req == ((void*)0) || req->error != ((void*)0))
  return;
 ap = gctl_new_arg(req);
 if (ap == ((void*)0))
  return;
 ap->name = strdup(name);
 gctl_check_alloc(req, ap->name);
 if (ap->name == ((void*)0))
  return;
 ap->nlen = strlen(ap->name) + 1;
 ap->value = value;
 ap->flag = flag;
 if (len >= 0)
  ap->len = len;
 else if (len < 0) {
  ap->flag |= GCTL_PARAM_ASCII;
  ap->len = strlen(value) + 1;
 }
}
