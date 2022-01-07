
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long align(unsigned long val, unsigned long align)
{
 return (val + align - 1) & ~(align - 1);
}
