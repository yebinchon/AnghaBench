
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int longfelem ;
typedef int felem ;


 int felem_shrink (int *,int const) ;
 int smallfelem_square (int ,int *) ;

__attribute__((used)) static void felem_square(longfelem out, const felem in)
{
    u64 small[4];
    felem_shrink(small, in);
    smallfelem_square(out, small);
}
