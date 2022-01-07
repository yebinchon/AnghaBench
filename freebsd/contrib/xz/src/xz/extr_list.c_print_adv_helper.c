
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int CHECKS_STR_SIZE ;
 int NICESTR_B ;
 int NICESTR_TIB ;
 char* _ (char*) ;
 int get_check_names (char*,int ,int) ;
 char* get_ratio (int ,int ) ;
 int printf (char*,char*) ;
 char* uint64_to_nicestr (int ,int ,int ,int,int ) ;
 char* uint64_to_str (int ,int ) ;

__attribute__((used)) static void
print_adv_helper(uint64_t stream_count, uint64_t block_count,
  uint64_t compressed_size, uint64_t uncompressed_size,
  uint32_t checks, uint64_t stream_padding)
{
 char checks_str[CHECKS_STR_SIZE];
 get_check_names(checks_str, checks, 1);

 printf(_("  Streams:            %s\n"),
   uint64_to_str(stream_count, 0));
 printf(_("  Blocks:             %s\n"),
   uint64_to_str(block_count, 0));
 printf(_("  Compressed size:    %s\n"),
   uint64_to_nicestr(compressed_size,
    NICESTR_B, NICESTR_TIB, 1, 0));
 printf(_("  Uncompressed size:  %s\n"),
   uint64_to_nicestr(uncompressed_size,
    NICESTR_B, NICESTR_TIB, 1, 0));
 printf(_("  Ratio:              %s\n"),
   get_ratio(compressed_size, uncompressed_size));
 printf(_("  Check:              %s\n"), checks_str);
 printf(_("  Stream padding:     %s\n"),
   uint64_to_nicestr(stream_padding,
    NICESTR_B, NICESTR_TIB, 1, 0));
 return;
}
