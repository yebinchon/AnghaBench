
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
typedef size_t uchar_t ;


 size_t U8_TBL_ELEMENT_NOT_DEF ;
 size_t*** u8_combining_class_b2_tbl ;
 size_t*** u8_combining_class_b3_tbl ;
 size_t*** u8_combining_class_b4_tbl ;
 size_t** u8_common_b1_tbl ;

__attribute__((used)) static uchar_t
combining_class(size_t uv, uchar_t *s, size_t sz)
{
 uint16_t b1 = 0;
 uint16_t b2 = 0;
 uint16_t b3 = 0;
 uint16_t b4 = 0;

 if (sz == 1 || sz > 4)
  return (0);

 if (sz == 2) {
  b3 = s[0];
  b4 = s[1];
 } else if (sz == 3) {
  b2 = s[0];
  b3 = s[1];
  b4 = s[2];
 } else if (sz == 4) {
  b1 = s[0];
  b2 = s[1];
  b3 = s[2];
  b4 = s[3];
 }

 b1 = u8_common_b1_tbl[uv][b1];
 if (b1 == U8_TBL_ELEMENT_NOT_DEF)
  return (0);

 b2 = u8_combining_class_b2_tbl[uv][b1][b2];
 if (b2 == U8_TBL_ELEMENT_NOT_DEF)
  return (0);

 b3 = u8_combining_class_b3_tbl[uv][b2][b3];
 if (b3 == U8_TBL_ELEMENT_NOT_DEF)
  return (0);

 return (u8_combining_class_b4_tbl[uv][b3][b4]);
}
