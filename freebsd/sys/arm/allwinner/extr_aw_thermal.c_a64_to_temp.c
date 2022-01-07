
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A64_TEMP_BASE ;
 int A64_TEMP_DIV ;
 int A64_TEMP_MUL ;

__attribute__((used)) static int
a64_to_temp(uint32_t val, int sensor)
{
 return ((A64_TEMP_BASE - (val * A64_TEMP_MUL)) / A64_TEMP_DIV);
}
