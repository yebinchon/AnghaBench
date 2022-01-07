
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct ptunit_result {int dummy; } ;
struct TYPE_3__ {int addr_cfg; } ;
struct TYPE_4__ {TYPE_1__ config; } ;
struct pt_config {TYPE_2__ addr_filter; } ;


 unsigned long long pt_addr_cfg_disabled ;
 int pt_config_init (struct pt_config*) ;
 int pt_filter_addr_cfg (TYPE_2__*,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,unsigned long long) ;

__attribute__((used)) static struct ptunit_result addr_filter_none(void)
{
 struct pt_config config;
 uint8_t filter;

 pt_config_init(&config);

 ptu_uint_eq(config.addr_filter.config.addr_cfg, 0ull);

 for (filter = 0; filter < 4; ++filter) {
  uint32_t addr_cfg;

  addr_cfg = pt_filter_addr_cfg(&config.addr_filter, filter);

  ptu_uint_eq(addr_cfg, pt_addr_cfg_disabled);
 }

 return ptu_passed();
}
