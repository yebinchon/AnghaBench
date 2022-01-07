
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ena_admin_host_info {int bdf; } ;


 int ENA_ADMIN_HOST_INFO_DEVICE_MASK ;
 int ENA_ADMIN_HOST_INFO_DEVICE_SHIFT ;

__attribute__((used)) static inline void set_ena_admin_host_info_device(struct ena_admin_host_info *p, uint16_t val)
{
 p->bdf |= (val << ENA_ADMIN_HOST_INFO_DEVICE_SHIFT) & ENA_ADMIN_HOST_INFO_DEVICE_MASK;
}
