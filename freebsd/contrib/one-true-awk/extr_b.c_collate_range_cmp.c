
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uschar ;


 int strcoll (char*,char*) ;

__attribute__((used)) static int collate_range_cmp(int a, int b)
{
 static char s[2][2];

 if ((uschar)a == (uschar)b)
  return 0;
 s[0][0] = a;
 s[1][0] = b;
 return (strcoll(s[0], s[1]));
}
