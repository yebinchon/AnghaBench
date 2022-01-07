
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char tolower (char) ;

__attribute__((used)) static inline unsigned long
ucl_lex_num_multiplier (const unsigned char c, bool is_bytes) {
 const struct {
  char c;
  long mult_normal;
  long mult_bytes;
 } multipliers[] = {
   {'m', 1000 * 1000, 1024 * 1024},
   {'k', 1000, 1024},
   {'g', 1000 * 1000 * 1000, 1024 * 1024 * 1024}
 };
 int i;

 for (i = 0; i < 3; i ++) {
  if (tolower (c) == multipliers[i].c) {
   if (is_bytes) {
    return multipliers[i].mult_bytes;
   }
   return multipliers[i].mult_normal;
  }
 }

 return 1;
}
