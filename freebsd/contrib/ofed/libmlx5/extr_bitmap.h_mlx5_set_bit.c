
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BITS_PER_LONG ;

__attribute__((used)) static inline void mlx5_set_bit(unsigned int nr, unsigned long *addr)
{
 addr[(nr / BITS_PER_LONG)] |= (1 << (nr % BITS_PER_LONG));
}
