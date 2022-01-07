
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LDOUBLE ;



__attribute__((used)) static LDOUBLE POW10(int val)
{
 LDOUBLE result = 1;

 while (val) {
  result *= 10;
  val--;
 }

 return result;
}
