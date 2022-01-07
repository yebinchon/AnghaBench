
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smallfelem ;
typedef int felem ;


 int felem_shrink (int ,int ) ;
 int point_add (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int smallfelem_expand (int ,int ) ;

__attribute__((used)) static void point_add_small(smallfelem x3, smallfelem y3, smallfelem z3,
                            smallfelem x1, smallfelem y1, smallfelem z1,
                            smallfelem x2, smallfelem y2, smallfelem z2)
{
    felem felem_x3, felem_y3, felem_z3;
    felem felem_x1, felem_y1, felem_z1;
    smallfelem_expand(felem_x1, x1);
    smallfelem_expand(felem_y1, y1);
    smallfelem_expand(felem_z1, z1);
    point_add(felem_x3, felem_y3, felem_z3, felem_x1, felem_y1, felem_z1, 0,
              x2, y2, z2);
    felem_shrink(x3, felem_x3);
    felem_shrink(y3, felem_y3);
    felem_shrink(z3, felem_z3);
}
