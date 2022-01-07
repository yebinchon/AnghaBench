
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char int_to_hex(int v)
{
  return (char)((v < 10) ? '0' + v : 'a' + (v - 10));
}
