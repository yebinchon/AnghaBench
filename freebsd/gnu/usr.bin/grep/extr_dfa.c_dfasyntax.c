
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reg_syntax_t ;


 int case_fold ;
 unsigned char eolbyte ;
 int syntax_bits ;
 int syntax_bits_set ;

void
dfasyntax (reg_syntax_t bits, int fold, unsigned char eol)
{
  syntax_bits_set = 1;
  syntax_bits = bits;
  case_fold = fold;
  eolbyte = eol;
}
