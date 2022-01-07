
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ena_admin_host_info {int bdf; } ;


 int ENA_ADMIN_HOST_INFO_BUS_MASK ;
 int ENA_ADMIN_HOST_INFO_BUS_SHIFT ;

__attribute__((used)) static inline uint16_t get_ena_admin_host_info_bus(const struct ena_admin_host_info *p)
{
 return (p->bdf & ENA_ADMIN_HOST_INFO_BUS_MASK) >> ENA_ADMIN_HOST_INFO_BUS_SHIFT;
}
