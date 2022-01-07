
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
fzcheck()
{
 double a, b;
 int i;

 a = 1.;
 b = .1;
 for(i = 155;; b *= b, i >>= 1) {
  if (i & 1) {
   a *= b;
   if (i == 1)
    break;
   }
  }
 b = a * a;
 return b == 0.;
 }
