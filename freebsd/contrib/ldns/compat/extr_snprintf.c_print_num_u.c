
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int PRINT_DEC_BUFSZ ;
 int print_dec (char*,int,unsigned int) ;
 int print_num (char**,size_t*,int*,int,int,int,int,int,int,int,int,int,char*,int) ;

__attribute__((used)) static void
print_num_u(char** at, size_t* left, int* ret, unsigned int value,
 int minw, int precision, int prgiven, int zeropad, int minus,
 int plus, int space)
{
 char buf[PRINT_DEC_BUFSZ];
 int negative = 0;
 int zero = (value == 0);
 int len = print_dec(buf, (int)sizeof(buf), value);
 print_num(at, left, ret, minw, precision, prgiven, zeropad, minus,
  plus, space, zero, negative, buf, len);
}
