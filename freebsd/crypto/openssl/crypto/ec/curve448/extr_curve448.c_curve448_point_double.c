
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curve448_point_t ;


 int point_double_internal (int ,int const,int ) ;

void curve448_point_double(curve448_point_t p, const curve448_point_t q)
{
    point_double_internal(p, q, 0);
}
