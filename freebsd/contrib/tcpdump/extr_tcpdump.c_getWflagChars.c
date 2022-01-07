
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
getWflagChars(int x)
{
 int c = 0;

 x -= 1;
 while (x > 0) {
  c += 1;
  x /= 10;
 }

 return c;
}
