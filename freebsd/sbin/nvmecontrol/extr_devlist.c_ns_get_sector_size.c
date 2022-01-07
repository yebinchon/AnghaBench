
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;
struct nvme_namespace_data {size_t flbas; size_t* lbaf; } ;


 size_t NVME_NS_DATA_FLBAS_FORMAT_MASK ;
 size_t NVME_NS_DATA_FLBAS_FORMAT_SHIFT ;
 size_t NVME_NS_DATA_LBAF_LBADS_MASK ;
 size_t NVME_NS_DATA_LBAF_LBADS_SHIFT ;

__attribute__((used)) static inline uint32_t
ns_get_sector_size(struct nvme_namespace_data *nsdata)
{
 uint8_t flbas_fmt, lbads;

 flbas_fmt = (nsdata->flbas >> NVME_NS_DATA_FLBAS_FORMAT_SHIFT) &
  NVME_NS_DATA_FLBAS_FORMAT_MASK;
 lbads = (nsdata->lbaf[flbas_fmt] >> NVME_NS_DATA_LBAF_LBADS_SHIFT) &
  NVME_NS_DATA_LBAF_LBADS_MASK;

 return (1 << lbads);
}
