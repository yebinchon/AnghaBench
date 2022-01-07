
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sa_query_result {int dummy; } ;
struct sa_handle {int dummy; } ;
struct TYPE_5__ {int capability_mask; } ;
struct TYPE_6__ {TYPE_1__ port_info; } ;
typedef TYPE_2__ ib_portinfo_record_t ;
typedef int ib_net32_t ;
typedef int attr ;


 int IB_PIR_COMPMASK_CAPMASK ;
 int IB_SA_ATTR_PORTINFORECORD ;
 int get_any_records (struct sa_handle*,int ,int,int ,TYPE_2__*,int,struct sa_query_result*) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int get_issm_records(struct sa_handle * h, ib_net32_t capability_mask,
       struct sa_query_result *result)
{
 ib_portinfo_record_t attr;

 memset(&attr, 0, sizeof(attr));
 attr.port_info.capability_mask = capability_mask;

 return get_any_records(h, IB_SA_ATTR_PORTINFORECORD, 1 << 31,
          IB_PIR_COMPMASK_CAPMASK, &attr, sizeof(attr), result);
}
