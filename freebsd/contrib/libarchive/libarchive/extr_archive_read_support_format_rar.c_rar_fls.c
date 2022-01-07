
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
rar_fls(unsigned int word)
{
  word |= (word >> 1);
  word |= (word >> 2);
  word |= (word >> 4);
  word |= (word >> 8);
  word |= (word >> 16);
  return word - (word >> 1);
}
