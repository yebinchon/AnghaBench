
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static u_char
calcShortSum(u_char *p)
{
 u_char sum = 0;
 int i;

 for (i = 0; i < 11; i++) {
  sum = (sum << 7)|(sum >> 1);
  sum += p[i];
 }

 return sum;
}
