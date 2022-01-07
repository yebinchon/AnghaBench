
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int DIGIT (char) ;
 char dtrace_load8 (uintptr_t) ;
 scalar_t__ isxdigit (char) ;
 scalar_t__ lisalnum (char) ;

__attribute__((used)) static int64_t
dtrace_strtoll(char *input, int base, size_t limit)
{
 uintptr_t pos = (uintptr_t)input;
 int64_t val = 0;
 int x;
 boolean_t neg = B_FALSE;
 char c, cc, ccc;
 uintptr_t end = pos + limit;




 while ((c = dtrace_load8(pos)) == ' ' || c == '\t')
  pos++;




 if (c == '-' || c == '+') {
  if (c == '-')
   neg = B_TRUE;
  c = dtrace_load8(++pos);
 }





 if (base == 16 && c == '0' && ((cc = dtrace_load8(pos + 1)) == 'x' ||
     cc == 'X') && isxdigit(ccc = dtrace_load8(pos + 2))) {
  pos += 2;
  c = ccc;
 }




 for (; pos < end && c != '\0' && lisalnum(c) && (x = DIGIT(c)) < base;
     c = dtrace_load8(++pos))
  val = val * base + x;

 return (neg ? -val : val);
}
