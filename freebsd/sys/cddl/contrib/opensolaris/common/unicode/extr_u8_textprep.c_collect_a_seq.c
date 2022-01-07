
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef size_t uchar_t ;
typedef scalar_t__ u8_normalization_states_t ;
typedef scalar_t__ boolean_t ;


 int EILSEQ ;
 int EINVAL ;
 size_t U8_ASCII_TOLOWER (size_t) ;
 size_t U8_ASCII_TOUPPER (size_t) ;
 size_t U8_COMBINING_CLASS_STARTER ;
 scalar_t__ U8_HANGUL_COMPOSABLE_LV_T (scalar_t__,int ) ;
 scalar_t__ U8_HANGUL_COMPOSABLE_L_V (scalar_t__,int ) ;
 size_t U8_HANGUL_JAMO_1ST_BYTE ;
 int U8_MAX_CHARS_A_SEQ ;
 int U8_MB_CUR_MAX ;
 int U8_PUT_3BYTES_INTO_UTF32 (int ,size_t,size_t,size_t) ;
 scalar_t__ U8_STATE_COMBINING_MARK ;
 scalar_t__ U8_STATE_HANGUL_LV ;
 scalar_t__ U8_STATE_HANGUL_LVT ;
 scalar_t__ U8_STATE_START ;
 int U8_STREAM_SAFE_TEXT_MAX ;
 int U8_SWAP_COMB_MARKS (size_t,size_t) ;
 size_t U8_UPPER_LIMIT_IN_A_SEQ ;
 size_t combining_class (size_t,size_t*,int) ;
 size_t do_case_conv (size_t,size_t*,size_t*,int,scalar_t__) ;
 int do_composition (size_t,size_t*,size_t*,size_t*,size_t*,size_t,size_t**,size_t*) ;
 void* do_decomp (size_t,size_t*,size_t*,int,scalar_t__,scalar_t__*) ;
 int* u8_number_of_bytes ;

__attribute__((used)) static size_t
collect_a_seq(size_t uv, uchar_t *u8s, uchar_t **source, uchar_t *slast,
 boolean_t is_it_toupper,
 boolean_t is_it_tolower,
 boolean_t canonical_decomposition,
 boolean_t compatibility_decomposition,
 boolean_t canonical_composition,
 int *errnum, u8_normalization_states_t *state)
{
 uchar_t *s;
 int sz;
 int saved_sz;
 size_t i;
 size_t j;
 size_t k;
 size_t l;
 uchar_t comb_class[U8_MAX_CHARS_A_SEQ];
 uchar_t disp[U8_MAX_CHARS_A_SEQ];
 uchar_t start[U8_MAX_CHARS_A_SEQ];
 uchar_t u8t[U8_MB_CUR_MAX];
 uchar_t uts[U8_STREAM_SAFE_TEXT_MAX + 1];
 uchar_t tc;
 size_t last;
 size_t saved_last;
 uint32_t u1;





 s = *source;





 if (s >= slast) {
  u8s[0] = '\0';

  return (0);
 }






 sz = u8_number_of_bytes[*s];

 if (sz < 0) {
  *errnum = EILSEQ;

  u8s[0] = *s++;
  u8s[1] = '\0';

  *source = s;

  return (1);
 }

 if (sz == 1) {
  if (is_it_toupper)
   u8s[0] = U8_ASCII_TOUPPER(*s);
  else if (is_it_tolower)
   u8s[0] = U8_ASCII_TOLOWER(*s);
  else
   u8s[0] = *s;
  s++;
  u8s[1] = '\0';
 } else if ((s + sz) > slast) {
  *errnum = EINVAL;

  for (i = 0; s < slast; )
   u8s[i++] = *s++;
  u8s[i] = '\0';

  *source = s;

  return (i);
 } else {
  if (is_it_toupper || is_it_tolower) {
   i = do_case_conv(uv, u8s, s, sz, is_it_toupper);
   s += sz;
   sz = i;
  } else {
   for (i = 0; i < sz; )
    u8s[i++] = *s++;
   u8s[i] = '\0';
  }
 }







 if (canonical_decomposition || compatibility_decomposition) {
  if (sz == 1) {
   *state = U8_STATE_START;

   saved_sz = 1;

   comb_class[0] = 0;
   start[0] = 0;
   disp[0] = 1;

   last = 1;
  } else {
   saved_sz = do_decomp(uv, u8s, u8s, sz,
       canonical_decomposition, state);

   last = 0;

   for (i = 0; i < saved_sz; ) {
    sz = u8_number_of_bytes[u8s[i]];

    comb_class[last] = combining_class(uv,
        u8s + i, sz);
    start[last] = i;
    disp[last] = sz;

    last++;
    i += sz;
   }







   if (*state == U8_STATE_START) {
    if (comb_class[last - 1])
     *state = U8_STATE_COMBINING_MARK;
   }
  }

  saved_last = last;

  while (s < slast) {
   sz = u8_number_of_bytes[*s];
   if (sz <= 1) {
    break;
   } else if ((s + sz) > slast) {
    break;
   } else {





    if (*s == U8_HANGUL_JAMO_1ST_BYTE) {
     U8_PUT_3BYTES_INTO_UTF32(u1,
         *s, *(s + 1), *(s + 2));

     if (U8_HANGUL_COMPOSABLE_L_V(*state,
         u1)) {
      i = 0;
      *state = U8_STATE_HANGUL_LV;
      goto COLLECT_A_HANGUL;
     }

     if (U8_HANGUL_COMPOSABLE_LV_T(*state,
         u1)) {
      i = 0;
      *state = U8_STATE_HANGUL_LVT;
      goto COLLECT_A_HANGUL;
     }
    }







    i = combining_class(uv, s, sz);
    if (i == U8_COMBINING_CLASS_STARTER)
     break;







    if (*state != U8_STATE_START &&
        *state != U8_STATE_COMBINING_MARK)
     break;

    *state = U8_STATE_COMBINING_MARK;
COLLECT_A_HANGUL:
    if (last >= U8_UPPER_LIMIT_IN_A_SEQ) {
TURN_STREAM_SAFE:
     *state = U8_STATE_START;
     comb_class[last] = 0;
     start[last] = saved_sz;
     disp[last] = 2;
     last++;

     u8s[saved_sz++] = 0xCD;
     u8s[saved_sz++] = 0x8F;

     break;
    }





    if (*state == U8_STATE_COMBINING_MARK) {
     k = last;
     l = sz;
     i = do_decomp(uv, uts, s, sz,
         canonical_decomposition, state);
     for (j = 0; j < i; ) {
      sz = u8_number_of_bytes[uts[j]];

      comb_class[last] =
          combining_class(uv,
          uts + j, sz);
      start[last] = saved_sz + j;
      disp[last] = sz;

      last++;
      if (last >=
          U8_UPPER_LIMIT_IN_A_SEQ) {
       last = k;
       goto TURN_STREAM_SAFE;
      }
      j += sz;
     }

     *state = U8_STATE_COMBINING_MARK;
     sz = i;
     s += l;

     for (i = 0; i < sz; i++)
      u8s[saved_sz++] = uts[i];
    } else {
     comb_class[last] = i;
     start[last] = saved_sz;
     disp[last] = sz;
     last++;

     for (i = 0; i < sz; i++)
      u8s[saved_sz++] = *s++;
    }
    if (is_it_toupper && sz >= 2 &&
        u8s[saved_sz - 2] == 0xCD &&
        u8s[saved_sz - 1] == 0x85) {
     u8s[saved_sz - 2] = 0xCE;
     u8s[saved_sz - 1] = 0x99;
    }
   }
  }
  last--;
  if (last >= saved_last) {
   for (i = 0; i < last; i++)
    for (j = last; j > i; j--)
     if (comb_class[j] &&
         comb_class[j - 1] > comb_class[j]) {
      U8_SWAP_COMB_MARKS(j - 1, j);
     }
  }

  *source = s;

  if (! canonical_composition) {
   u8s[saved_sz] = '\0';
   return (saved_sz);
  }






  sz = do_composition(uv, u8s, comb_class, start, disp, last,
      &s, slast);
 }

 *source = s;

 return ((size_t)sz);
}
