
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ svn_boolean_t ;
struct TYPE_3__ {int block_count; unsigned char** blocks; int pool; } ;
typedef TYPE_1__ svn_bit_array__t ;
typedef int apr_size_t ;


 int BLOCK_SIZE ;
 int BLOCK_SIZE_BITS ;
 void* apr_pcalloc (int ,int) ;
 int memcpy (unsigned char**,unsigned char**,int) ;
 int select_data_size (int) ;

void
svn_bit_array__set(svn_bit_array__t *array,
                   apr_size_t idx,
                   svn_boolean_t value)
{
  unsigned char *block;


  apr_size_t block_idx = idx / BLOCK_SIZE_BITS;


  apr_size_t byte_idx = (idx % BLOCK_SIZE_BITS) / 8;


  apr_size_t bit_idx = (idx % BLOCK_SIZE_BITS) % 8;






  if (block_idx >= array->block_count)
    {
      apr_size_t new_count;
      unsigned char **new_blocks;




      if (!value)
        return;




      new_count = select_data_size(idx);
      new_blocks = apr_pcalloc(array->pool, new_count * sizeof(*new_blocks));
      memcpy(new_blocks, array->blocks,
             array->block_count * sizeof(*new_blocks));
      array->blocks = new_blocks;
      array->block_count = new_count;
    }




  block = array->blocks[block_idx];
  if (block == ((void*)0))
    {



      if (!value)
        return;



      block = apr_pcalloc(array->pool, BLOCK_SIZE);
      array->blocks[block_idx] = block;
    }


  if (value)
    block[byte_idx] |= (unsigned char)(1u << bit_idx);
  else
    block[byte_idx] &= ~(unsigned char)(1u << bit_idx);
}
