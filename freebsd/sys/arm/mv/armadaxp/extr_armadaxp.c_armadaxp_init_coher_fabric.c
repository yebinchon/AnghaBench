
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int COHER_FABRIC_CONF ;
 int COHER_FABRIC_CTRL ;
 int platform_get_ncpus () ;
 int read_coher_fabric (int ) ;
 int write_coher_fabric (int ,int) ;

void
armadaxp_init_coher_fabric(void)
{
 uint32_t val, cpus, mask;

 cpus = platform_get_ncpus();
 mask = (1 << cpus) - 1;
 val = read_coher_fabric(COHER_FABRIC_CTRL);
 val |= (mask << 24);
 write_coher_fabric(COHER_FABRIC_CTRL, val);

 val = read_coher_fabric(COHER_FABRIC_CONF);
 val |= (mask << 24);
 val |= (1 << 15);
 write_coher_fabric(COHER_FABRIC_CONF, val);
}
