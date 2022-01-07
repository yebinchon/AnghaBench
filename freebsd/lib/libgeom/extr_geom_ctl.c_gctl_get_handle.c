
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;


 struct gctl_req* calloc (int,int) ;

struct gctl_req *
gctl_get_handle(void)
{

 return (calloc(1, sizeof(struct gctl_req)));
}
