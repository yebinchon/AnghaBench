
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 int U32_STR_MAXSIZE ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void
u32_to_string(char *str, uint32_t x)
{
    char tmp[U32_STR_MAXSIZE - 1U];
    size_t i;

    i = sizeof tmp;
    do {
        tmp[--i] = (x % (uint32_t) 10U) + '0';
        x /= (uint32_t) 10U;
    } while (x != 0U && i != 0U);
    memcpy(str, &tmp[i], (sizeof tmp) - i);
    str[(sizeof tmp) - i] = 0;
}
