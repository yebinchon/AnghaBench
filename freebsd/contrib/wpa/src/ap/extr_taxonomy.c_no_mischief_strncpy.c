
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void no_mischief_strncpy(char *dst, const char *src, size_t n)
{
 size_t i;

 for (i = 0; i < n; i++) {
  unsigned char s = src[i];
  int is_lower = s >= 'a' && s <= 'z';
  int is_upper = s >= 'A' && s <= 'Z';
  int is_digit = s >= '0' && s <= '9';

  if (is_lower || is_upper || is_digit) {


   dst[i] = s;
  } else {




   dst[i] = '_';
  }
 }
}
