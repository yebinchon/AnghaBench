
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_admin_host_info {int driver_version; } ;


 int ENA_ADMIN_HOST_INFO_SUB_MINOR_MASK ;
 int ENA_ADMIN_HOST_INFO_SUB_MINOR_SHIFT ;

__attribute__((used)) static inline uint32_t get_ena_admin_host_info_sub_minor(const struct ena_admin_host_info *p)
{
 return (p->driver_version & ENA_ADMIN_HOST_INFO_SUB_MINOR_MASK) >> ENA_ADMIN_HOST_INFO_SUB_MINOR_SHIFT;
}
