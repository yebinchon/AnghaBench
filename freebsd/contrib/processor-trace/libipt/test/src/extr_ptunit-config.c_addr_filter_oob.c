
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct ptunit_result {int dummy; } ;
struct pt_config {int addr_filter; } ;


 int memset (int *,int,int) ;
 unsigned long long pt_addr_cfg_disabled ;
 int pt_config_init (struct pt_config*) ;
 int pt_filter_addr_a (int *,int ) ;
 int pt_filter_addr_b (int *,int ) ;
 int pt_filter_addr_cfg (int *,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,unsigned long long) ;

__attribute__((used)) static struct ptunit_result addr_filter_oob(uint8_t filter)
{
 struct pt_config config;
 uint64_t addr_a, addr_b;
 uint32_t addr_cfg;

 pt_config_init(&config);

 memset(&config.addr_filter, 0xcc, sizeof(config.addr_filter));

 addr_cfg = pt_filter_addr_cfg(&config.addr_filter, filter);
 ptu_uint_eq(addr_cfg, pt_addr_cfg_disabled);

 addr_a = pt_filter_addr_a(&config.addr_filter, filter);
 ptu_uint_eq(addr_a, 0ull);

 addr_b = pt_filter_addr_b(&config.addr_filter, filter);
 ptu_uint_eq(addr_b, 0ull);

 return ptu_passed();
}
