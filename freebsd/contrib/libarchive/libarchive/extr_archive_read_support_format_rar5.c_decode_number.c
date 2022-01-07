
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int uint16_t ;
struct rar5 {int dummy; } ;
struct decode_table {int* decode_len; size_t quick_bits; int* quick_len; int* quick_num; size_t* decode_pos; size_t size; int* decode_num; } ;
struct archive_read {int dummy; } ;


 int ARCHIVE_EOF ;
 scalar_t__ ARCHIVE_OK ;
 struct rar5* get_context (struct archive_read*) ;
 scalar_t__ read_bits_16 (struct rar5*,int const*,int*) ;
 int skip_bits (struct rar5*,int) ;

__attribute__((used)) static int decode_number(struct archive_read* a, struct decode_table* table,
    const uint8_t* p, uint16_t* num)
{
 int i, bits, dist;
 uint16_t bitfield;
 uint32_t pos;
 struct rar5* rar = get_context(a);

 if(ARCHIVE_OK != read_bits_16(rar, p, &bitfield)) {
  return ARCHIVE_EOF;
 }

 bitfield &= 0xfffe;

 if(bitfield < table->decode_len[table->quick_bits]) {
  int code = bitfield >> (16 - table->quick_bits);
  skip_bits(rar, table->quick_len[code]);
  *num = table->quick_num[code];
  return ARCHIVE_OK;
 }

 bits = 15;

 for(i = table->quick_bits + 1; i < 15; i++) {
  if(bitfield < table->decode_len[i]) {
   bits = i;
   break;
  }
 }

 skip_bits(rar, bits);

 dist = bitfield - table->decode_len[bits - 1];
 dist >>= (16 - bits);
 pos = table->decode_pos[bits] + dist;

 if(pos >= table->size)
  pos = 0;

 *num = table->decode_num[pos];
 return ARCHIVE_OK;
}
