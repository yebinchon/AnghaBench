
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
parsedigit(char c)
{
 if (c >= '0' && c <= '9')
  return c - '0';
 else if (c >= 'a' && c <= 'f')
  return c - 'a';
 else if (c >= 'A' && c <= 'F')
  return c - 'A';
 else
  return -1;
}
