
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_admin_host_info {int driver_version; } ;


 int ENA_ADMIN_HOST_INFO_MINOR_MASK ;
 int ENA_ADMIN_HOST_INFO_MINOR_SHIFT ;

__attribute__((used)) static inline void set_ena_admin_host_info_minor(struct ena_admin_host_info *p, uint32_t val)
{
 p->driver_version |= (val << ENA_ADMIN_HOST_INFO_MINOR_SHIFT) & ENA_ADMIN_HOST_INFO_MINOR_MASK;
}
