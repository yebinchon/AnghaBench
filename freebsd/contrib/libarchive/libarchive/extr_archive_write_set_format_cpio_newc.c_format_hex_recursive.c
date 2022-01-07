
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



__attribute__((used)) static int64_t
format_hex_recursive(int64_t v, char *p, int s)
{
 if (s == 0)
  return (v);
 v = format_hex_recursive(v, p+1, s-1);
 *p = "0123456789abcdef"[v & 0xf];
 return (v >> 4);
}
