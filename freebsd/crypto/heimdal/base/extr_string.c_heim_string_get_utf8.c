
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ heim_string_t ;



const char *
heim_string_get_utf8(heim_string_t string)
{
    return (const char *)string;
}
