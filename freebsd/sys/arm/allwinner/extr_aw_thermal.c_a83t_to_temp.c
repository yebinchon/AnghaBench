
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A83T_TEMP_BASE ;
 int A83T_TEMP_DIV ;
 int A83T_TEMP_MUL ;

__attribute__((used)) static int
a83t_to_temp(uint32_t val, int sensor)
{
 return ((A83T_TEMP_BASE - (val * A83T_TEMP_MUL)) / A83T_TEMP_DIV);
}
