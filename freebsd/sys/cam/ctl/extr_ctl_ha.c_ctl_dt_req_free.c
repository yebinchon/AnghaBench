
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_ha_dt_req {int dummy; } ;


 int M_CTL ;
 int free (struct ctl_ha_dt_req*,int ) ;

void
ctl_dt_req_free(struct ctl_ha_dt_req *req)
{

 free(req, M_CTL);
}
