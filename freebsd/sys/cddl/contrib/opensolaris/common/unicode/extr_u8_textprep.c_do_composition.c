
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uchar_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 scalar_t__ U8_COMBINING_CLASS_STARTER ;
 scalar_t__ U8_HANGUL_JAMO_1ST_BYTE ;
 scalar_t__ U8_HANGUL_JAMO_L (int) ;
 scalar_t__ U8_HANGUL_JAMO_L_FIRST ;
 scalar_t__ U8_HANGUL_JAMO_T (int) ;
 int U8_HANGUL_JAMO_T_FIRST ;
 scalar_t__ U8_HANGUL_JAMO_V (int) ;
 scalar_t__ U8_HANGUL_JAMO_V_FIRST ;
 int U8_HANGUL_SYL_FIRST ;
 int U8_HANGUL_T_COUNT ;
 int U8_HANGUL_V_COUNT ;
 int U8_MAX_CHARS_A_SEQ ;
 int U8_MB_CUR_MAX ;
 int U8_PUT_3BYTES_INTO_UTF32 (int,scalar_t__,scalar_t__,scalar_t__) ;
 int U8_SAVE_HANGUL_AS_UTF8 (scalar_t__*,int ,int,int,int) ;
 int U8_STREAM_SAFE_TEXT_MAX ;
 scalar_t__ U8_TBL_ELEMENT_FILLER ;
 size_t U8_UPPER_LIMIT_IN_A_SEQ ;
 scalar_t__ blocked (scalar_t__*,size_t) ;
 scalar_t__* find_composition_start (size_t,scalar_t__*,size_t) ;
 size_t* u8_number_of_bytes ;

__attribute__((used)) static size_t
do_composition(size_t uv, uchar_t *s, uchar_t *comb_class, uchar_t *start,
 uchar_t *disp, size_t last, uchar_t **os, uchar_t *oslast)
{
 uchar_t t[U8_STREAM_SAFE_TEXT_MAX + 1];
 uchar_t tc[U8_MB_CUR_MAX];
 uint8_t saved_marks[U8_MAX_CHARS_A_SEQ];
 size_t saved_marks_count;
 uchar_t *p;
 uchar_t *saved_p;
 uchar_t *q;
 size_t i;
 size_t saved_i;
 size_t j;
 size_t k;
 size_t l;
 size_t C;
 size_t saved_l;
 size_t size;
 uint32_t u1;
 uint32_t u2;
 boolean_t match_not_found = B_TRUE;







 if (last >= U8_MAX_CHARS_A_SEQ)
  last = U8_UPPER_LIMIT_IN_A_SEQ;

 for (i = l = 0; i <= last; i++) {





  if (i >= last || comb_class[i] != U8_COMBINING_CLASS_STARTER) {
SAVE_THE_CHAR:
   p = s + start[i];
   size = disp[i];
   for (k = 0; k < size; k++)
    t[l++] = *p++;
   continue;
  }





  if (s[start[i]] == U8_HANGUL_JAMO_1ST_BYTE) {
   U8_PUT_3BYTES_INTO_UTF32(u1, s[start[i]],
       s[start[i] + 1], s[start[i] + 2]);
   U8_PUT_3BYTES_INTO_UTF32(u2, s[start[i] + 3],
       s[start[i] + 4], s[start[i] + 5]);

   if (U8_HANGUL_JAMO_L(u1) && U8_HANGUL_JAMO_V(u2)) {
    u1 -= U8_HANGUL_JAMO_L_FIRST;
    u2 -= U8_HANGUL_JAMO_V_FIRST;
    u1 = U8_HANGUL_SYL_FIRST +
        (u1 * U8_HANGUL_V_COUNT + u2) *
        U8_HANGUL_T_COUNT;

    i += 2;
    if (i <= last) {
     U8_PUT_3BYTES_INTO_UTF32(u2,
         s[start[i]], s[start[i] + 1],
         s[start[i] + 2]);

     if (U8_HANGUL_JAMO_T(u2)) {
      u1 += u2 -
          U8_HANGUL_JAMO_T_FIRST;
      i++;
     }
    }

    U8_SAVE_HANGUL_AS_UTF8(t + l, 0, 1, 2, u1);
    i--;
    l += 3;
    continue;
   }
  }





  p = find_composition_start(uv, s + start[i], disp[i]);
  if (p == ((void*)0))
   goto SAVE_THE_CHAR;







  saved_p = p;
  saved_i = i;
  saved_l = l;
  saved_marks_count = 0;

TRY_THE_NEXT_MARK:
  q = s + start[++i];
  size = disp[i];
  match_not_found = B_TRUE;

  for (C = *p++; C > 0; C--) {
   for (k = 0; k < size; p++, k++)
    if (*p != q[k])
     break;


   if (k >= size && *p == U8_TBL_ELEMENT_FILLER) {
    match_not_found = B_FALSE;

    l = saved_l;

    while (*++p != U8_TBL_ELEMENT_FILLER)
     t[l++] = *p;

    break;
   }


   if (*p != U8_TBL_ELEMENT_FILLER)
    while (*++p != U8_TBL_ELEMENT_FILLER)
     ;
   while (*++p != U8_TBL_ELEMENT_FILLER)
    ;
   p++;
  }
  if (match_not_found) {
   if (comb_class[i] == U8_COMBINING_CLASS_STARTER) {
    i--;
    goto SAVE_THE_CHAR;
   }

   saved_marks[saved_marks_count++] = i;
  }

  if (saved_l == l) {
   while (i < last) {
    if (blocked(comb_class, i + 1))
     saved_marks[saved_marks_count++] = ++i;
    else
     break;
   }
   if (i < last) {
    p = saved_p;
    goto TRY_THE_NEXT_MARK;
   }
  } else if (i < last) {
   p = find_composition_start(uv, t + saved_l,
       l - saved_l);
   if (p != ((void*)0)) {
    saved_p = p;
    goto TRY_THE_NEXT_MARK;
   }
  }
  if (saved_l == l) {
   p = s + start[saved_i];
   size = disp[saved_i];
   for (j = 0; j < size; j++)
    t[l++] = *p++;
  }

  for (k = 0; k < saved_marks_count; k++) {
   p = s + start[saved_marks[k]];
   size = disp[saved_marks[k]];
   for (j = 0; j < size; j++)
    t[l++] = *p++;
  }
 }







 if (comb_class[last] == U8_COMBINING_CLASS_STARTER) {
  p = *os;
  saved_l = l - disp[last];

  while (p < oslast) {
   size = u8_number_of_bytes[*p];
   if (size <= 1 || (p + size) > oslast)
    break;

   saved_p = p;

   for (i = 0; i < size; i++)
    tc[i] = *p++;

   q = find_composition_start(uv, t + saved_l,
       l - saved_l);
   if (q == ((void*)0)) {
    p = saved_p;
    break;
   }

   match_not_found = B_TRUE;

   for (C = *q++; C > 0; C--) {
    for (k = 0; k < size; q++, k++)
     if (*q != tc[k])
      break;

    if (k >= size && *q == U8_TBL_ELEMENT_FILLER) {
     match_not_found = B_FALSE;

     l = saved_l;

     while (*++q != U8_TBL_ELEMENT_FILLER) {





      if (l >=
          U8_STREAM_SAFE_TEXT_MAX) {
       p = saved_p;
       goto SAFE_RETURN;
      }
      t[l++] = *q;
     }

     break;
    }

    if (*q != U8_TBL_ELEMENT_FILLER)
     while (*++q != U8_TBL_ELEMENT_FILLER)
      ;
    while (*++q != U8_TBL_ELEMENT_FILLER)
     ;
    q++;
   }

   if (match_not_found) {
    p = saved_p;
    break;
   }
  }
SAFE_RETURN:
  *os = p;
 }







 for (i = 0; i < l; i++)
  s[i] = t[i];
 s[l] = '\0';

 return (l);
}
