
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
hex2int(int ch)
{
 if (ch >= '0' && ch <= '9')
  return ch - '0';
 if (ch >= 'a' && ch <= 'f')
  return 10 + ch - 'a';
 if (ch >= 'A' && ch <= 'F')
  return 10 + ch - 'A';
 return 16;
}
