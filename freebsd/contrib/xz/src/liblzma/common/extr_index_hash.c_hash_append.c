
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int sizes ;
typedef scalar_t__ const lzma_vli ;
typedef int lzma_ret ;
struct TYPE_3__ {int check; int count; int index_list_size; int uncompressed_size; int blocks_size; } ;
typedef TYPE_1__ lzma_index_hash_info ;


 int LZMA_CHECK_BEST ;
 int LZMA_OK ;
 int lzma_check_update (int *,int ,int const*,int) ;
 scalar_t__ lzma_vli_size (scalar_t__ const) ;
 scalar_t__ vli_ceil4 (scalar_t__ const) ;

__attribute__((used)) static lzma_ret
hash_append(lzma_index_hash_info *info, lzma_vli unpadded_size,
  lzma_vli uncompressed_size)
{
 info->blocks_size += vli_ceil4(unpadded_size);
 info->uncompressed_size += uncompressed_size;
 info->index_list_size += lzma_vli_size(unpadded_size)
   + lzma_vli_size(uncompressed_size);
 ++info->count;

 const lzma_vli sizes[2] = { unpadded_size, uncompressed_size };
 lzma_check_update(&info->check, LZMA_CHECK_BEST,
   (const uint8_t *)(sizes), sizeof(sizes));

 return LZMA_OK;
}
