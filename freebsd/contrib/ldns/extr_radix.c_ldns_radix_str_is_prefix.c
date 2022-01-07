
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ radix_strlen_t ;


 scalar_t__ memcmp (int *,int *,scalar_t__) ;

__attribute__((used)) static int
ldns_radix_str_is_prefix(uint8_t* str1, radix_strlen_t len1,
 uint8_t* str2, radix_strlen_t len2)
{
 if (len1 == 0) {
  return 1;
 }
 if (len1 > len2) {
  return 0;
 }
 return (memcmp(str1, str2, len1) == 0);
}
