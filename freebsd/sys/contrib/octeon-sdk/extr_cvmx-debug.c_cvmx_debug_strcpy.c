
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void cvmx_debug_strcpy (char *dest, const char *src)
{
    while (*src)
    {
        *dest = *src;
        src++;
        dest++;
    }
    *dest = 0;
}
