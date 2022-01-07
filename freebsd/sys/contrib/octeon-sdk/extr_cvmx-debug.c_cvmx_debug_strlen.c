
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t cvmx_debug_strlen (const char *str)
{
    size_t size = 0;
    while (*str)
    {
        size++;
        str++;
    }
    return size;
}
