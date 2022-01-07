
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline int
to_int(int ch)
{

 if (ch >= '0' && ch <= '9')
  return (ch - '0');
 else if (ch >= 'A' && ch <= 'F')
  return ((ch - 'A') + 10);
 else if (ch >= 'a' && ch <= 'f')
  return ((ch - 'a') + 10);
 return (-1);
}
