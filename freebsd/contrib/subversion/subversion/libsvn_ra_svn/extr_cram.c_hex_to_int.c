
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int hex_to_int(char c)
{
  return (c >= '0' && c <= '9') ? c - '0'
    : (c >= 'a' && c <= 'f') ? c - 'a' + 10
    : -1;
}
