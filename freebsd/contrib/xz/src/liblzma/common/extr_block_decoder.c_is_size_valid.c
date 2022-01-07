
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lzma_vli ;


 scalar_t__ LZMA_VLI_UNKNOWN ;

__attribute__((used)) static inline bool
is_size_valid(lzma_vli size, lzma_vli reference)
{
 return reference == LZMA_VLI_UNKNOWN || reference == size;
}
