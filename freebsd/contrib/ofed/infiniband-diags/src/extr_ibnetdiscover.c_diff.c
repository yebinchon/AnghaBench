
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ibnd_fabric_t ;


 int DIFF_FLAG_CA ;
 int DIFF_FLAG_ROUTER ;
 int DIFF_FLAG_SWITCH ;
 int IB_NODE_CA ;
 int IB_NODE_ROUTER ;
 int IB_NODE_SWITCH ;
 int diff_common (int *,int *,int ,int,int ,int ,int ) ;
 int diffcheck_flags ;
 int out_ca ;
 int out_ca_detail ;
 int out_ca_port ;
 int out_switch ;
 int out_switch_detail ;
 int out_switch_port ;

int diff(ibnd_fabric_t * orig_fabric, ibnd_fabric_t * new_fabric)
{
 if (diffcheck_flags & DIFF_FLAG_SWITCH)
  diff_common(orig_fabric, new_fabric, IB_NODE_SWITCH,
       diffcheck_flags, out_switch, out_switch_detail,
       out_switch_port);

 if (diffcheck_flags & DIFF_FLAG_CA)
  diff_common(orig_fabric, new_fabric, IB_NODE_CA,
       diffcheck_flags, out_ca, out_ca_detail,
       out_ca_port);

 if (diffcheck_flags & DIFF_FLAG_ROUTER)
  diff_common(orig_fabric, new_fabric, IB_NODE_ROUTER,
       diffcheck_flags, out_ca, out_ca_detail,
       out_ca_port);

 return 0;
}
