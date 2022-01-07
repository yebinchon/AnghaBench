
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGEST ;


 int SCM_BOOL_F ;
 int SCM_MAKINUM (int) ;

__attribute__((used)) static LONGEST
scm_istr2int (char *str, int len, int radix)
{
  int i = 0;
  LONGEST inum = 0;
  int c;
  int sign = 0;

  if (0 >= len)
    return SCM_BOOL_F;
  switch (str[0])
    {
    case '-':
    case '+':
      sign = str[0];
      if (++i == len)
 return SCM_BOOL_F;
    }
  do
    {
      switch (c = str[i++])
 {
 case '0':
 case '1':
 case '2':
 case '3':
 case '4':
 case '5':
 case '6':
 case '7':
 case '8':
 case '9':
   c = c - '0';
   goto accumulate;
 case 'A':
 case 'B':
 case 'C':
 case 'D':
 case 'E':
 case 'F':
   c = c - 'A' + 10;
   goto accumulate;
 case 'a':
 case 'b':
 case 'c':
 case 'd':
 case 'e':
 case 'f':
   c = c - 'a' + 10;
 accumulate:
   if (c >= radix)
     return SCM_BOOL_F;
   inum *= radix;
   inum += c;
   break;
 default:
   return SCM_BOOL_F;
 }
    }
  while (i < len);
  if (sign == '-')
    inum = -inum;
  return SCM_MAKINUM (inum);
}
