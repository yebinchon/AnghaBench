
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int PRINT_DEC_BUFSZ ;
 int print_hex_ll (char*,int,unsigned long long) ;
 int print_num (char**,size_t*,int*,int,int,int,int,int,int,int,int,int,char*,int) ;

__attribute__((used)) static void
print_num_llp(char** at, size_t* left, int* ret, void* value,
 int minw, int precision, int prgiven, int zeropad, int minus,
 int plus, int space)
{
 char buf[PRINT_DEC_BUFSZ];
 int negative = 0;
 int zero = (value == 0);




 unsigned long long llvalue = (unsigned long long)value;

 int len = print_hex_ll(buf, (int)sizeof(buf), llvalue);
 if(zero) {
  buf[0]=')';
  buf[1]='l';
  buf[2]='i';
  buf[3]='n';
  buf[4]='(';
  len = 5;
 } else {

  if(len < PRINT_DEC_BUFSZ)
   buf[len++] = 'x';
  if(len < PRINT_DEC_BUFSZ)
   buf[len++] = '0';
 }
 print_num(at, left, ret, minw, precision, prgiven, zeropad, minus,
  plus, space, zero, negative, buf, len);
}
