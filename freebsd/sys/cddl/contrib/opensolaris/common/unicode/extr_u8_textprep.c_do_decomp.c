
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint32_t ;
typedef char uint16_t ;
typedef char uchar_t ;
typedef scalar_t__ u8_normalization_states_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_2__ {char tbl_id; char base; } ;


 char U8_16BIT_TABLE_INDICATOR ;
 char U8_DECOMP_BOTH ;
 char U8_DECOMP_CANONICAL ;
 scalar_t__ U8_HANGUL_JAMO_L (char) ;
 char U8_HANGUL_JAMO_L_FIRST ;
 scalar_t__ U8_HANGUL_JAMO_T (char) ;
 scalar_t__ U8_HANGUL_JAMO_T_FIRST ;
 scalar_t__ U8_HANGUL_JAMO_V (char) ;
 char U8_HANGUL_JAMO_V_FIRST ;
 scalar_t__ U8_HANGUL_SYLLABLE (char) ;
 scalar_t__ U8_HANGUL_SYL_FIRST ;
 char U8_HANGUL_T_COUNT ;
 char U8_HANGUL_VT_COUNT ;
 int U8_PUT_3BYTES_INTO_UTF32 (char,char,char,char) ;
 int U8_SAVE_HANGUL_AS_UTF8 (char*,int,int,int,char) ;
 scalar_t__ U8_STATE_HANGUL_L ;
 scalar_t__ U8_STATE_HANGUL_LV ;
 scalar_t__ U8_STATE_HANGUL_LVT ;
 scalar_t__ U8_STATE_HANGUL_T ;
 scalar_t__ U8_STATE_HANGUL_V ;
 scalar_t__ U8_STATE_START ;
 char U8_TBL_ELEMENT_NOT_DEF ;
 char** u8_common_b1_tbl ;
 char*** u8_decomp_b2_tbl ;
 TYPE_1__*** u8_decomp_b3_tbl ;
 size_t*** u8_decomp_b4_16bit_tbl ;
 size_t*** u8_decomp_b4_tbl ;
 size_t** u8_decomp_final_tbl ;

__attribute__((used)) static size_t
do_decomp(size_t uv, uchar_t *u8s, uchar_t *s, int sz,
 boolean_t canonical_decomposition, u8_normalization_states_t *state)
{
 uint16_t b1 = 0;
 uint16_t b2 = 0;
 uint16_t b3 = 0;
 uint16_t b3_tbl;
 uint16_t b3_base;
 uint16_t b4 = 0;
 size_t start_id;
 size_t end_id;
 size_t i;
 uint32_t u1;

 if (sz == 2) {
  b3 = u8s[0] = s[0];
  b4 = u8s[1] = s[1];
  u8s[2] = '\0';
 } else if (sz == 3) {

  U8_PUT_3BYTES_INTO_UTF32(u1, s[0], s[1], s[2]);






  if (U8_HANGUL_SYLLABLE(u1)) {
   u1 -= U8_HANGUL_SYL_FIRST;

   b1 = U8_HANGUL_JAMO_L_FIRST + u1 / U8_HANGUL_VT_COUNT;
   b2 = U8_HANGUL_JAMO_V_FIRST + (u1 % U8_HANGUL_VT_COUNT)
       / U8_HANGUL_T_COUNT;
   b3 = u1 % U8_HANGUL_T_COUNT;

   U8_SAVE_HANGUL_AS_UTF8(u8s, 0, 1, 2, b1);
   U8_SAVE_HANGUL_AS_UTF8(u8s, 3, 4, 5, b2);
   if (b3) {
    b3 += U8_HANGUL_JAMO_T_FIRST;
    U8_SAVE_HANGUL_AS_UTF8(u8s, 6, 7, 8, b3);

    u8s[9] = '\0';
    *state = U8_STATE_HANGUL_LVT;
    return (9);
   }

   u8s[6] = '\0';
   *state = U8_STATE_HANGUL_LV;
   return (6);
  }

  b2 = u8s[0] = s[0];
  b3 = u8s[1] = s[1];
  b4 = u8s[2] = s[2];
  u8s[3] = '\0';





  if (U8_HANGUL_JAMO_L(u1)) {
   *state = U8_STATE_HANGUL_L;
   return (3);
  }

  if (U8_HANGUL_JAMO_V(u1)) {
   if (*state == U8_STATE_HANGUL_L)
    *state = U8_STATE_HANGUL_LV;
   else
    *state = U8_STATE_HANGUL_V;
   return (3);
  }

  if (U8_HANGUL_JAMO_T(u1)) {
   if (*state == U8_STATE_HANGUL_LV)
    *state = U8_STATE_HANGUL_LVT;
   else
    *state = U8_STATE_HANGUL_T;
   return (3);
  }
 } else if (sz == 4) {
  b1 = u8s[0] = s[0];
  b2 = u8s[1] = s[1];
  b3 = u8s[2] = s[2];
  b4 = u8s[3] = s[3];
  u8s[4] = '\0';
 } else {




  u8s[0] = s[0];
  u8s[1] = '\0';
  *state = U8_STATE_START;
  return (1);
 }





 *state = U8_STATE_START;


 b1 = u8_common_b1_tbl[uv][b1];
 if (b1 == U8_TBL_ELEMENT_NOT_DEF)
  return ((size_t)sz);

 b2 = u8_decomp_b2_tbl[uv][b1][b2];
 if (b2 == U8_TBL_ELEMENT_NOT_DEF)
  return ((size_t)sz);

 b3_tbl = u8_decomp_b3_tbl[uv][b2][b3].tbl_id;
 if (b3_tbl == U8_TBL_ELEMENT_NOT_DEF)
  return ((size_t)sz);






 if (b3_tbl >= U8_16BIT_TABLE_INDICATOR) {
  b3_tbl -= U8_16BIT_TABLE_INDICATOR;
  start_id = u8_decomp_b4_16bit_tbl[uv][b3_tbl][b4];
  end_id = u8_decomp_b4_16bit_tbl[uv][b3_tbl][b4 + 1];
 } else {
  start_id = u8_decomp_b4_tbl[uv][b3_tbl][b4];
  end_id = u8_decomp_b4_tbl[uv][b3_tbl][b4 + 1];
 }


 if (start_id >= end_id)
  return ((size_t)sz);
 b3_base = u8_decomp_b3_tbl[uv][b2][b3].base;


 b1 = u8_decomp_final_tbl[uv][b3_base + start_id];






 if (canonical_decomposition) {

  if (b1 < U8_DECOMP_BOTH)
   return ((size_t)sz);

  start_id++;

  if (b1 == U8_DECOMP_BOTH) {
   end_id = start_id +
       u8_decomp_final_tbl[uv][b3_base + start_id];
   start_id++;
  }
 } else {




  if (b1 == U8_DECOMP_BOTH) {
   start_id++;
   start_id += u8_decomp_final_tbl[uv][b3_base + start_id];
  } else if (b1 == U8_DECOMP_CANONICAL) {
   start_id++;
  }
 }

 for (i = 0; start_id < end_id; start_id++)
  u8s[i++] = u8_decomp_final_tbl[uv][b3_base + start_id];
 u8s[i] = '\0';

 return (i);
}
