
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xz_file_info ;
typedef int lzma_index_iter ;
typedef int file_pair ;
typedef int block_header_info ;


 scalar_t__ parse_block_header (int *,int const*,int *,int *) ;
 scalar_t__ parse_check_value (int *,int const*) ;

__attribute__((used)) static bool
parse_details(file_pair *pair, const lzma_index_iter *iter,
  block_header_info *bhi, xz_file_info *xfi)
{
 if (parse_block_header(pair, iter, bhi, xfi))
  return 1;

 if (parse_check_value(pair, iter))
  return 1;

 return 0;
}
