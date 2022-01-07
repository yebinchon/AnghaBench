
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t DRM_ELD_BASELINE_ELD_LEN ;
 int DRM_ELD_HEADER_BLOCK_SIZE ;

__attribute__((used)) static int drm_eld_size(const uint8_t *eld)
{
 return DRM_ELD_HEADER_BLOCK_SIZE + eld[DRM_ELD_BASELINE_ELD_LEN] * 4;
}
