
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool
ucl_lex_is_comment (const unsigned char c1, const unsigned char c2)
{
 if (c1 == '/') {
  if (c2 == '*') {
   return 1;
  }
 }
 else if (c1 == '#') {
  return 1;
 }
 return 0;
}
