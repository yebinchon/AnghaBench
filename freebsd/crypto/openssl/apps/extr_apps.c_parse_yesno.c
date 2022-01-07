
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int parse_yesno(const char *str, int def)
{
    if (str) {
        switch (*str) {
        case 'f':
        case 'F':
        case 'n':
        case 'N':
        case '0':
            return 0;
        case 't':
        case 'T':
        case 'y':
        case 'Y':
        case '1':
            return 1;
        }
    }
    return def;
}
