
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



__attribute__((used)) static int64_t
format_octal_recursive(int64_t v, char *p, int s)
{
 if (s == 0)
  return (v);
 v = format_octal_recursive(v, p+1, s-1);
 *p = '0' + ((char)v & 7);
 return (v >> 3);
}
