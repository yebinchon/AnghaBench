
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RC4_INT ;



const char *RC4_options(void)
{
    if (sizeof(RC4_INT) == 1)
        return "rc4(char)";
    else
        return "rc4(int)";
}
