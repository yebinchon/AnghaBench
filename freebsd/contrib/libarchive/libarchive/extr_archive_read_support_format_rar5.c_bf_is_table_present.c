
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct compressed_block_header {int block_flags_u8; } ;



__attribute__((used)) static inline
uint8_t bf_is_table_present(const struct compressed_block_header* hdr) {
 return (hdr->block_flags_u8 >> 7) & 1;
}
