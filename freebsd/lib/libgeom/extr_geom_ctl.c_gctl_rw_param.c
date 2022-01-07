
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 int GCTL_PARAM_RW ;
 int gctl_param_add (struct gctl_req*,char const*,int,void*,int ) ;

void
gctl_rw_param(struct gctl_req *req, const char *name, int len, void *value)
{

 gctl_param_add(req, name, len, value, GCTL_PARAM_RW);
}
