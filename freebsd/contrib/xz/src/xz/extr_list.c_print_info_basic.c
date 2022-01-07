
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int idx; } ;
typedef TYPE_1__ xz_file_info ;
struct TYPE_6__ {char* src_name; } ;
typedef TYPE_2__ file_pair ;


 int CHECKS_STR_SIZE ;
 int NICESTR_B ;
 int NICESTR_TIB ;
 int _ (char*) ;
 int get_check_names (char*,int ,int) ;
 char* get_ratio (int ,int ) ;
 int lzma_index_block_count (int ) ;
 int lzma_index_checks (int ) ;
 int lzma_index_file_size (int ) ;
 int lzma_index_stream_count (int ) ;
 int lzma_index_uncompressed_size (int ) ;
 int printf (char*,char*,char const*,char*,char const*,char*,char const*,char*,char const*,char*,char const*,char*,char const*,char const*) ;
 int puts (int ) ;
 char* tuklib_mbstr_fw (char const*,int) ;
 char* uint64_to_nicestr (int ,int ,int ,int,int) ;
 char* uint64_to_str (int ,int) ;

__attribute__((used)) static bool
print_info_basic(const xz_file_info *xfi, file_pair *pair)
{
 static bool headings_displayed = 0;
 if (!headings_displayed) {
  headings_displayed = 1;




  puts(_("Strms  Blocks   Compressed Uncompressed  Ratio  "
    "Check   Filename"));
 }

 char checks[CHECKS_STR_SIZE];
 get_check_names(checks, lzma_index_checks(xfi->idx), 0);

 const char *cols[7] = {
  uint64_to_str(lzma_index_stream_count(xfi->idx), 0),
  uint64_to_str(lzma_index_block_count(xfi->idx), 1),
  uint64_to_nicestr(lzma_index_file_size(xfi->idx),
   NICESTR_B, NICESTR_TIB, 0, 2),
  uint64_to_nicestr(lzma_index_uncompressed_size(xfi->idx),
   NICESTR_B, NICESTR_TIB, 0, 3),
  get_ratio(lzma_index_file_size(xfi->idx),
   lzma_index_uncompressed_size(xfi->idx)),
  checks,
  pair->src_name,
 };
 printf("%*s %*s  %*s  %*s  %*s  %-*s %s\n",
   tuklib_mbstr_fw(cols[0], 5), cols[0],
   tuklib_mbstr_fw(cols[1], 7), cols[1],
   tuklib_mbstr_fw(cols[2], 11), cols[2],
   tuklib_mbstr_fw(cols[3], 11), cols[3],
   tuklib_mbstr_fw(cols[4], 5), cols[4],
   tuklib_mbstr_fw(cols[5], 7), cols[5],
   cols[6]);

 return 0;
}
