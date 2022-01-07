
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int ascii_isdigit(const char inchar) {
    if (inchar > 0x2F && inchar < 0x3A)
        return 1;
    return 0;
}
