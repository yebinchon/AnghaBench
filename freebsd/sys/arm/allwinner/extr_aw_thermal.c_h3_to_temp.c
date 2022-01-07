
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int H3_TEMP_BASE ;
 int H3_TEMP_DIV ;
 int H3_TEMP_MUL ;

__attribute__((used)) static int
h3_to_temp(uint32_t val, int sensor)
{
 return (H3_TEMP_BASE - ((val * H3_TEMP_MUL) / H3_TEMP_DIV));
}
