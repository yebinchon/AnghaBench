
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD2_INT ;



const char *MD2_options(void)
{
    if (sizeof(MD2_INT) == 1)
        return "md2(char)";
    else
        return "md2(int)";
}
