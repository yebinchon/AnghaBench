
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_conf_addr_filter {int dummy; } ;


 int pt_filter_check_cfg_filter (struct pt_conf_addr_filter const*,int ) ;
 int pt_filter_check_cfg_stop (struct pt_conf_addr_filter const*,int ) ;

int pt_filter_addr_check(const struct pt_conf_addr_filter *filter,
    uint64_t addr)
{
 int status;

 status = pt_filter_check_cfg_stop(filter, addr);
 if (status <= 0)
  return status;

 return pt_filter_check_cfg_filter(filter, addr);
}
