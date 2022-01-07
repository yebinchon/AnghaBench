
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_ha_dt_req {int dummy; } ;


 int M_CTL ;
 int M_WAITOK ;
 int M_ZERO ;
 struct ctl_ha_dt_req* malloc (int,int ,int) ;

struct ctl_ha_dt_req *
ctl_dt_req_alloc(void)
{

 return (malloc(sizeof(struct ctl_ha_dt_req), M_CTL, M_WAITOK | M_ZERO));
}
