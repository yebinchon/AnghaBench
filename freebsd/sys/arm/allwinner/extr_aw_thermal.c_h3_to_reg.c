
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int H3_TEMP_DIV ;
 int H3_TEMP_MINUS ;
 int H3_TEMP_MUL ;

__attribute__((used)) static uint32_t
h3_to_reg(int val, int sensor)
{
 return ((H3_TEMP_MINUS - (val * H3_TEMP_DIV)) / H3_TEMP_MUL);
}
