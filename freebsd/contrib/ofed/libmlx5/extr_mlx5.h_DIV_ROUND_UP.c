
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned DIV_ROUND_UP(unsigned n, unsigned d)
{
 return (n + d - 1u) / d;
}
