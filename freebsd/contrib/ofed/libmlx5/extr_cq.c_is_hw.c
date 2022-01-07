
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int MLX5_CQE_OWNER_MASK ;

__attribute__((used)) static int is_hw(uint8_t own, int n, int mask)
{
 return (own & MLX5_CQE_OWNER_MASK) ^ !!(n & (mask + 1));
}
