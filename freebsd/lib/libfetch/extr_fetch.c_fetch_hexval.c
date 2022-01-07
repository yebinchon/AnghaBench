
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
fetch_hexval(char ch)
{

 if (ch >= '0' && ch <= '9')
  return (ch - '0');
 else if (ch >= 'a' && ch <= 'f')
  return (ch - 'a' + 10);
 else if (ch >= 'A' && ch <= 'F')
  return (ch - 'A' + 10);
 return (-1);
}
