
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;


 int BLOCK_SIZE_BITS ;
 int INITIAL_BLOCK_COUNT ;

__attribute__((used)) static apr_size_t
select_data_size(apr_size_t max)
{

  apr_size_t size = INITIAL_BLOCK_COUNT;





  while (size <= max / BLOCK_SIZE_BITS)
    size *= 2;

  return size;
}
