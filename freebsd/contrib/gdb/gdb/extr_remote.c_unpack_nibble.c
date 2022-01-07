
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ishex (int ,int*) ;

__attribute__((used)) static char *
unpack_nibble (char *buf, int *val)
{
  ishex (*buf++, val);
  return buf;
}
