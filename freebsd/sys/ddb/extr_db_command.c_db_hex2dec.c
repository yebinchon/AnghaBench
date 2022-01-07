
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;



db_expr_t
db_hex2dec(db_expr_t expr)
{
 uintptr_t x, y;
 db_expr_t val;

 y = 1;
 val = 0;
 x = expr;
 while (x != 0) {
  if (x % 16 > 9)
   return (-1);
  val += (x % 16) * (y);
  x >>= 4;
  y *= 10;
 }
 return (val);
}
