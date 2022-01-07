
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strtoint (char const* const) ;

__attribute__((used)) static int
strtoint_clipped(const char *const str, int min, int max)
{
 int r = strtoint(str);
 if (r == -1)
  return r;
 else if (r<min)
  return min;
 else if (r>max)
  return max;
 else
  return r;
}
