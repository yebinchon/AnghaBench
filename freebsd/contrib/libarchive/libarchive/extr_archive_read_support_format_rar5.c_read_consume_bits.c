
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct rar5 {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int read_bits_16 (struct rar5*,int const*,scalar_t__*) ;
 int skip_bits (struct rar5*,int) ;

__attribute__((used)) static int read_consume_bits(struct rar5* rar, const uint8_t* p, int n,
    int* value)
{
 uint16_t v;
 int ret, num;

 if(n == 0 || n > 16) {


  return ARCHIVE_FATAL;
 }

 ret = read_bits_16(rar, p, &v);
 if(ret != ARCHIVE_OK)
  return ret;

 num = (int) v;
 num >>= 16 - n;

 skip_bits(rar, n);

 if(value)
  *value = num;

 return ARCHIVE_OK;
}
