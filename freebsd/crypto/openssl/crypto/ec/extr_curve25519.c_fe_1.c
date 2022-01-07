
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int* fe ;


 int memset (int*,int ,int) ;

__attribute__((used)) static void fe_1(fe h)
{
    memset(h, 0, sizeof(int32_t) * 10);
    h[0] = 1;
}
