
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned char svn_boolean_t ;
struct TYPE_3__ {int block_count; unsigned char** blocks; } ;
typedef TYPE_1__ svn_bit_array__t ;
typedef int apr_size_t ;


 int BLOCK_SIZE_BITS ;

svn_boolean_t
svn_bit_array__get(svn_bit_array__t *array,
                   apr_size_t idx)
{
  unsigned char *block;


  apr_size_t block_idx = idx / BLOCK_SIZE_BITS;


  apr_size_t byte_idx = (idx % BLOCK_SIZE_BITS) / 8;


  apr_size_t bit_idx = (idx % BLOCK_SIZE_BITS) % 8;


  if (block_idx >= array->block_count)
    return 0;


  block = array->blocks[block_idx];
  if (block == ((void*)0))
    return 0;


  return (block[byte_idx] >> bit_idx) & 1;
}
